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

class VoxelVolume;

enum class PathType {
    NONE = 0,
    ERR = 1,
    DIRECTORY = 2,
    FILE = 3
};

class NavigatorSystem {
protected:
    NavigatorSystem() = default;
    ~NavigatorSystem();
private:
    static NavigatorSystem* singleton;
public:
    NavigatorSystem(NavigatorSystem &other) = delete;
    void operator=(const NavigatorSystem &) = delete;
    static NavigatorSystem* Instance();

private:
    // used to store the tags an values from a file already explored. LazyLoaded.
    map<string, map<Tag,string>> fileAndTagToValueDB;
    // build the navigation hierarchy: patientID, studyID, seriesID, instanceID, path
    map<string, map<string, map<string, map<string, string>>>> navigatorDB;

public:
    VoxelVolume* voxelVolume = nullptr;

    // Folder Navigation
    PathType GetPathType(const string& path);
    vector<string> ListAllDicomFromFolderRecursive(const string& path);
    bool PathIsDicomFile(const string& path);

    void BuildDB(vector<string> filePaths);
    void BuildDB(string folder);

    // for rendering and building the dicom navigator hierarquically
    vector<string> ListPatientIds();
    vector<string> ListStudiesFromPatientId(string patientId);
    vector<string> ListSeriesFromPatientIdStudyId(string patientId, string studyId);
    vector<string> ListInstancesFromPatientIdStudyIdSeriesId(string patientId, string studyId, string seriesId);

    // to pretty render names
    string PrettyPatientName(string patientId);
    string PrettyStudyDescription(string patientId, string studyId);
    string PrettySeriesDescription(string patientId, string studyId, string seriesId);

    string GetFilePath(string patientId, string studyId, string seriesId, string instanceId);
    shared_ptr<ImageReader> GetReader(const string& path);

private:
    vector<string> ListAllFilesFromFolderRecursive(const string& path);

public:
    // common queries we need to ask a dicom file
    string ReadStringValue(Reader* reader, Tag tag);
    string ReadStringValue(string path, Tag tag);
public:
    vector<string> sortSeries(string patientId, string studyId, string seriesId);
    // Utility Functions
    // get original pixmap / image
    // decompress image
    // window image to be rendered in RGB

    // probably it would be better if we move this func elsewhere
    // there are lots of formats to be supported
    vector<double> DicomToGrayscale(ImageReader* reader);
    vector<double> DicomToGrayscale(string path);


};

#endif // NAVIGATORSYSTEM_H
