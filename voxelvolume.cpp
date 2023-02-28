#include "voxelvolume.h"

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
#include <sstream>
#include <unordered_map>
#include "navigatorsystem.h"
#include <algorithm>
VoxelVolume::VoxelVolume(string PatientId, string StudyId, string SeriesId) {
    auto nav = NavigatorSystem::Instance();
    auto files = nav->sortSeries(PatientId, StudyId, SeriesId);

    // extract data from the first file
    auto reader = nav->GetReader(files[0]);
    auto ds = reader->GetFile().GetDataSet();
    // todo: this is optional and might not find data. we need to test corner cases
    auto maxPixValue = nav->ReadStringValue(reader.get(), Tag(0x0028,0x0109));
    if(maxPixValue.empty())
        this->LargestPixelValueInSeries = 0;
    else
        this->LargestPixelValueInSeries = stoi(maxPixValue);
    auto minPixValue = nav->ReadStringValue(reader.get(), Tag(0x0028,0x0108));
    if(minPixValue.empty())
        this->SmallestPixelValueInSeries = 0;
    else
        this->SmallestPixelValueInSeries = stoi(minPixValue);

    // required
    auto image = reader->GetImage();
    this->Colmns = image.GetColumns();
    this->Rows = image.GetRows();
    // todo: check if gdcm has something lik ethat
    this->SliceThickness = stod(nav->ReadStringValue(reader.get(),Tag(0x0018,0x0050)));

    // Todo: this might be wrong
    this->PixelSpacingCol = image.GetSpacing(0);
    this->PixelSpacingRow = image.GetSpacing(1);

    // force free to avoid problems reading it in loop
    reader = nullptr;

    // allocate the volume
    for(auto file : files){
        vector<vector<double>> sliceData;
        auto grayscaleVec = nav->DicomToGrayscale(file);
        for(auto line=0; line<this->Rows; line++) {
            sliceData.push_back({});
            for(auto col=0; col<this->Colmns; col++) {
                sliceData[line].push_back(grayscaleVec[line*this->Rows + col]);
            }
        }
        this->volume.push_back(sliceData);
    }
    // load all slices

}

