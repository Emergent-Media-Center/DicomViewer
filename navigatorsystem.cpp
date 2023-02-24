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

//Reader NavigatorSystem::GetReader(const string &path) {
//    if(!PathIsDicomFile(path))
//        return {}; // todo: create a better way to protect againt bad reads

//    Reader reader;
//    reader.SetFileName(path.c_str());
//    return reader;
//}

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
