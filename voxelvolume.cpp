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
    this->Colmns = stoi(nav->ReadStringValue(reader.get(),Tag(0x0028,0x0011)));
    this->Rows = stoi(nav->ReadStringValue(reader.get(),Tag(0x0028,0x0010)));

    this->SliceThickness = stod(nav->ReadStringValue(reader.get(),Tag(0x0018,0x0050)));
    auto pixelSpacing = nav->ReadStringValue(reader.get(),Tag(0x0028,0x0030));
    stringstream ss(pixelSpacing);
    ss >> this->PixelSpacingCol >> this->PixelSpacingRow; // I hope so

    // allocate the volume

    // load all slices

}

