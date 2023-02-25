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
#include <unordered_map>
#include "navigatorsystem.h"

VoxelVolume::VoxelVolume(string PatientId, string StudyId, string SeriesId) {
    auto nav = NavigatorSystem::Instance();
    auto files = nav->sortSeries(PatientId, StudyId, SeriesId);

    // extract data from the first file

}

