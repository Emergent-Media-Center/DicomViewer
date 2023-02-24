#ifndef NAVIGATORSYSTEM_H
#define NAVIGATORSYSTEM_H

#include <memory>
#include <string>

#include "gdcmDataSet.h"
#include "gdcmFile.h"
#include "gdcmFileMetaInformation.h"
#include "gdcmImageChangeTransferSyntax.h"
#include "gdcmPixmapReader.h"
#include "gdcmPixmapWriter.h"
#include "gdcmReader.h"
#include "gdcmWriter.h"
#include "gdcmGlobal.h"
#include "gdcmDicts.h"
#include "gdcmDict.h"
#include "gdcmAttribute.h"
#include "gdcmStringFilter.h"
#include <gdcmImageReader.h>
#include <unordered_map>


using namespace std;
using namespace gdcm;

enum class PathType {
    NONE = 0,
    ERROR = 1,
    DIRECTORY = 2,
    FILE = 3
};

class NavigatorSystem {
private:
    // used to store the tags an values from a file already explored. LazyLoaded.
    map<string, map<Tag,string>> fileToTagToValueDB;
    // build the navigation hierarchy: patientID, studyID, seriesID, instanceID, path
    map<string, map<string, map<string, map<int, string>>>> navigatorDB;

public:
    NavigatorSystem();

    // Folder Navigation
    PathType GetPathType(const string& path);
    vector<string> ListAllDicomFromFolderRecursive(const string& path);
    bool PathIsDicomFile(const string& path);

    void BuildDB(vector<string> filePaths);
    void BuildDB(string folder);

private:
    vector<string> ListAllFilesFromFolderRecursive(const string& path);
    shared_ptr<ImageReader> GetReader(const string& path);

public:
    // common queries we need to ask a dicom file

    // Patient         https://dicom.innolitics.com/ciods/mr-image/patient
    // General Study   https://dicom.innolitics.com/ciods/mr-image/general-study
    // Patient Study   https://dicom.innolitics.com/ciods/mr-image/patient-study
    // General Studies https://dicom.innolitics.com/ciods/mr-image/general-series
    // General Image   https://dicom.innolitics.com/ciods/mr-image/general-image
    // Image plane     https://dicom.innolitics.com/ciods/mr-image/image-plane
    // Image Pixel     https://dicom.innolitics.com/ciods/mr-image/image-pixel

private:
    string ReadStringValue(Reader* reader, uint16_t Group, uint16_t Element);
public:
    // Utility Functions
    // get original pixmap / image
    // decompress image
    // window image to be rendered in RGB
};

#endif // NAVIGATORSYSTEM_H
