#include "navigatorsystem.h"
#include <filesystem> // C++17
namespace fs = std::filesystem;

NavigatorSystem* NavigatorSystem::singleton = nullptr;

NavigatorSystem *NavigatorSystem::Instance() {
    if(singleton==nullptr)
        singleton = new NavigatorSystem();
    return singleton;
}

PathType NavigatorSystem::GetPathType(const string &path) {
    const fs::path p(path);
    std::error_code ec; // For using the non-throwing overloads of functions below.
    if (fs::is_directory(p,ec))
        return PathType::DIRECTORY;
    if(ec)
        return PathType::ERROR;

    if (fs::is_regular_file(p, ec))
        return PathType::FILE;
    if(ec)
        return PathType::ERROR;

    return PathType::NONE;
}

vector<string> NavigatorSystem::ListAllDicomFromFolderRecursive(const string &path) {
    auto files = ListAllFilesFromFolderRecursive(path);
    vector<string> dicoms;
    for(auto p: files){
        if(PathIsDicomFile(p))
            dicoms.push_back(p);
    }
    return dicoms;
}

bool NavigatorSystem::PathIsDicomFile(const string &path) {
    if(GetPathType(path)!=PathType::FILE)
        return false;

    const fs::path p(path);
    auto filesize = std::filesystem::file_size(p);
    if(filesize <= 128+4) // dicom starts at byte 128
        return false;

    ifstream fin(path);
    fin.ignore(128);
    char header[4];
    fin.read(header, 4);
    fin.close();

    // dicom header is DICM string starting at position 128
    return header[0] == 'D' && header[1] == 'I' && header[2] == 'C' && header[3] == 'M';
}

void NavigatorSystem::BuildDB(vector<string> filePaths) {
    for(auto path : filePaths) {
        auto reader = GetReader(path);
        // patientid
        string patientId = ReadStringValue(reader.get(), Tag(0x0010,0x0020));

        // studyid
        string studyId = ReadStringValue(reader.get(), Tag(0x0020,0x0010));

        // seriesid
        string seriesId = ReadStringValue(reader.get(), Tag(0x0020, 0x000E));

        // instanceid
        string instanceId = ReadStringValue(reader.get(), Tag(0x0020,0x0013));

        // index data for future use
        navigatorDB[patientId][studyId][seriesId][instanceId] = path;
        fileAndTagToValueDB[path][Tag(0x0010,0x0020)] = patientId;
        fileAndTagToValueDB[path][Tag(0x0020,0x0010)] = studyId;
        fileAndTagToValueDB[path][Tag(0x0020,0x000E)] = seriesId;
        fileAndTagToValueDB[path][Tag(0x0020,0x0013)] = instanceId;
    }
}

void NavigatorSystem::BuildDB(string folder) {
    BuildDB(ListAllDicomFromFolderRecursive(folder));
}

vector<string> NavigatorSystem::ListPatientIds() {
    vector<string> patients;
    for(auto p : navigatorDB)
        patients.push_back(p.first);
    return patients;
}

vector<string> NavigatorSystem::ListStudiesFromPatientId(string patientId) {
    vector<string> studies;
    if(navigatorDB.find(patientId) == navigatorDB.end())
        return {};

    for(auto p : navigatorDB[patientId])
        studies.push_back(p.first);

    return studies;
}

vector<string> NavigatorSystem::ListSeriesFromPatientIdStudyId(string patientId, string studyId) {
    vector<string> series;
    if(navigatorDB.find(patientId) == navigatorDB.end() ||
        navigatorDB[patientId].find(studyId) == navigatorDB[patientId].end())
        return {};

    for(auto p : navigatorDB[patientId][studyId])
        series.push_back(p.first);

    return series;
}

vector<string> NavigatorSystem::ListInstancesFromPatientIdStudyIdSeriesId(string patientId, string studyId, string seriesId) {
    vector<string> instances;
    if(navigatorDB.find(patientId) == navigatorDB.end() ||
        navigatorDB[patientId].find(studyId) == navigatorDB[patientId].end() ||
        navigatorDB[patientId][studyId].find(seriesId) == navigatorDB[patientId][studyId].end())
        return {};

    for(auto p : navigatorDB[patientId][studyId][seriesId])
        instances.push_back(p.first);

    return instances;
}

string NavigatorSystem::PrettyPatientName(string patientId) {
    // string patient, string study, string series, string instance
    if(navigatorDB.find(patientId) == navigatorDB.end() || navigatorDB[patientId].empty())
        return {};
    auto study = navigatorDB[patientId].begin()->second;
    if(study.empty())
        return {};
    auto serie = study.begin()->second;
    if(serie.empty())
        return {};
    auto instancePath = serie.begin()->second;

    return ReadStringValue(instancePath, Tag(0x0010,0x0010));
}

string NavigatorSystem::PrettyStudyDescription(string patientId, string studyId) {
    // string patient, string study, string series, string instance
    if(navigatorDB.find(patientId) == navigatorDB.end() ||
        navigatorDB[patientId].find(studyId) == navigatorDB[patientId].end() ||
        navigatorDB[patientId][studyId].empty())
        return {};
    auto serie = navigatorDB[patientId][studyId].begin()->second;
    if(serie.empty())
        return {};
    auto instancePath = serie.begin()->second;

    return ReadStringValue(instancePath, Tag(0x0008,0x1030));
}

string NavigatorSystem::PrettySeriesDescription(string patientId, string studyId, string seriesId) {
    // string patient, string study, string series, string instance
    if(navigatorDB.find(patientId) == navigatorDB.end() ||
        navigatorDB[patientId].find(studyId) == navigatorDB[patientId].end() ||
        navigatorDB[patientId][studyId].find(seriesId) == navigatorDB[patientId][studyId].end() ||
        navigatorDB[patientId][studyId][seriesId].empty())
        return {};
    auto instancePath = navigatorDB[patientId][studyId][seriesId].begin()->second;

    return ReadStringValue(instancePath, Tag(0x0008,0x103E));
}

string NavigatorSystem::GetFilePath(string patient, string study, string series, string instance) {
    if(navigatorDB.find(patient) == navigatorDB.end() ||
        navigatorDB[patient].find(study) == navigatorDB[patient].end() ||
        navigatorDB[patient][study].find(series) == navigatorDB[patient][study].end() ||
        navigatorDB[patient][study][series].find(instance) == navigatorDB[patient][study][series].end()
        )
        return {};
    else
        return navigatorDB[patient][study][series][instance];
}

shared_ptr<ImageReader> NavigatorSystem::GetReader(const string &path) {
    if(!PathIsDicomFile(path))
        return nullptr;

    auto reader = make_shared<ImageReader>();
    reader->SetFileName(path.c_str());
    if(!reader->CanRead() || !reader->Read())
        return nullptr;
    return reader;
}

string NavigatorSystem::ReadStringValue(Reader *reader, Tag tag) {
    gdcm::StringFilter sf;
    sf.SetFile(reader->GetFile());
    return sf.ToString(tag);
}

string NavigatorSystem::ReadStringValue(string path, Tag tag) {
    // read from cache
    if(fileAndTagToValueDB.find(path)!=fileAndTagToValueDB.end() &&
        fileAndTagToValueDB[path].find(tag) != fileAndTagToValueDB[path].end())
        return fileAndTagToValueDB[path][tag];

    // store in cache
    auto reader = GetReader(path);
    auto value = ReadStringValue(reader.get(),tag);
    fileAndTagToValueDB[path][tag] = value;
    return value;
}

vector<string> NavigatorSystem::ListAllFilesFromFolderRecursive(const string &path) {
    if(GetPathType(path)!=PathType::DIRECTORY)
        return {};

    const fs::path p(path);
    vector<string> files;
    for (const auto & entry : fs::recursive_directory_iterator(p))
        if(GetPathType(entry.path()) == PathType::FILE)
            files.push_back(entry.path());

    return files;
}
