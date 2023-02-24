#include "navigatorsystem.h"
#include <filesystem> // C++17
namespace fs = std::filesystem;

NavigatorSystem::NavigatorSystem()
{

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
        string patientId = ReadStringValue(reader.get(), 0x0010,0x0020);

        // studyid
        string studyId = ReadStringValue(reader.get(), 0x0020,0x0010);

        // seriesid
        string seriesId = ReadStringValue(reader.get(), 0x0020, 0x000E);

        // instanceid
        string instanceId = ReadStringValue(reader.get(), 0x0020,0x0013);

        // data for future use
        navigatorDB[patientId][studyId][seriesId][stoi(instanceId)] = path;
        fileToTagToValueDB[path][Tag(0x0010,0x0020)] = patientId;
        fileToTagToValueDB[path][Tag(0x0020,0x0010)] = studyId;
        fileToTagToValueDB[path][Tag(0x0020,0x000E)] = seriesId;
        fileToTagToValueDB[path][Tag(0x0020,0x0013)] = instanceId;
    }
}

void NavigatorSystem::BuildDB(string folder) {
    BuildDB(ListAllDicomFromFolderRecursive(folder));
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

string NavigatorSystem::ReadStringValue(Reader *reader, uint16_t Group, uint16_t Element) {
    gdcm::StringFilter sf;
    sf.SetFile(reader->GetFile());
    return sf.ToString(Tag(Group,Element));
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
