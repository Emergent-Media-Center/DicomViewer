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

VoxelVolume::VoxelVolume(vector<string> filepaths, string SeriesId = "") {
    const gdcm::Global& g = gdcm::Global::GetInstance();
    const gdcm::Dicts &dicts = g.GetDicts();
    const gdcm::Dict &pubdict = dicts.GetPublicDict();

    if(filepaths.empty()) {
        cerr << "Error: creating volume from an empty list of files." << endl;// todo: communicate errors better!!
        return;
    }

    // assumes the studyname from the first file to be used as filter to load only dicoms related to that
    if(SeriesId.empty()){
        // Instanciate the reader:
        gdcm::Reader reader;
        reader.SetFileName( filepaths[0].c_str() );
        if( !reader.Read() ) {
            std::cerr << "Could not read: " << filepaths[0] << std::endl;
            return;
        }
        // The output of gdcm::Reader is a gdcm::File
        gdcm::File &file = reader.GetFile();

        // the dataset is the the set of element we are interested in:
        gdcm::DataSet &ds = file.GetDataSet();

        // https://dicom.innolitics.com/ciods/mr-image/general-series/00200011
        gdcm::Tag tagUid(0x0020,0x000E);
//        gdcm::Tag tagNum(0020,0x0011);
        if(ds.FindDataElement(tagUid)) {
            gdcm::StringFilter sf;
            sf.SetFile(reader.GetFile());
            SeriesId = sf.ToString(tagUid);
            cout << "found seriesid in the first file: " << SeriesId << endl;
        }
        else {
            std::cerr << "Could not find series identification in the file: " << filepaths[0] << std::endl;
            return;
        }
    }

    // open every file and filter the ones with the seriesid given
    unordered_map<int, gdcm::Pixmap> idToPixMap;
    for(auto filepath : filepaths){
        // Instanciate the reader:
        gdcm::ImageReader reader;
        reader.SetFileName( filepath.c_str() );
        if( !reader.Read() ) {
            std::cerr << "Could not read: " << filepath << std::endl;
            return;
        }

        auto ds = reader.GetFile().GetDataSet();

        // check if the current file belongs to the series. FILTER
        gdcm::Tag tagUid(0x0020,0x000E);
        if(ds.FindDataElement(tagUid)) {
            gdcm::StringFilter sf;
            sf.SetFile(reader.GetFile());
            if(SeriesId != sf.ToString(tagUid)){
                cout << "file: " << filepath << " does not belong to the series " << SeriesId << endl;
                continue;
            }
        }
        else {
            std::cerr << "Could not find series identification in the file: " << filepath << std::endl;
            continue;
        }

        // get instance number
        gdcm::Attribute<0x0020,0x0013> instancenumberTag;
        instancenumberTag.SetFromDataSet( ds );
        int instanceNumber = instancenumberTag.GetValue();

        // get image
        auto img = reader.GetImage();

        // https://gdcm.sourceforge.net/html/ConvertToQImage_8cxx-example.html
        // decompressed image if needed before extracting the pixel data
        // WiP
    }
}
