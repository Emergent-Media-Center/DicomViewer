#include "QMLDicomImage.h"

#include "gdcmDataSet.h"
#include "gdcmFileMetaInformation.h"
#include "gdcmImageChangeTransferSyntax.h"
#include "gdcmPixmapReader.h"
#include "gdcmPixmapWriter.h"
#include "gdcmReader.h"
#include "gdcmWriter.h"

QMLDicomImage::QMLDicomImage(QObject *parent)
    : QObject{parent}
{
    //std::string filename = "C:/Users/dillo/OneDrive/Documents/EMC_Projects/CaseImages/GERALDO MUCCILLO DAUDT/GERALDO MUCCILLO DAUDT/series1/imagem1.dcm";
    //std::vector<char> charArray = std::vector<char>(filename.begin(), filename.end());
    //openFile(charArray);
}


void QMLDicomImage::PrintImage()
{
    std::string path = "C:";

    const QStringList locations = QStandardPaths::standardLocations(QStandardPaths::HomeLocation);

    if(!locations.isEmpty())
    {
        path = QString(locations.first()).toStdString();
    }

    QImageWriter writer((path + "/test.png").c_str(),"PNG");
    if(writer.canWrite())
    {
        qDebug() << "Write called...";
        writer.write(img);
        qDebug() << "Image written to " << (path + "/test.png").c_str() << "\n";
    }
    else
    {
        qDebug() << "Can't write to " << (path + "/test.png").c_str() << "\n";
    }
}

double QMLDicomImage::RemapValue(int value)
{
    return lowerRange + (value - MIN_RANGE) * (upperRange - lowerRange) / (MAX_RANGE - MIN_RANGE);
}


//Takes in a char array of a file name
/*std::vector<char> QMLDicomImage::decompressDicomBytes(std::vector<char> data) {
  // Debug is a little too verbose
  gdcm::Trace::SetDebug(false);
  gdcm::Trace::SetWarning(false);
  gdcm::Trace::SetError(false);

  gdcm::FileMetaInformation::SetSourceApplicationEntityTitle("gdcmconv");

  // convert bytes into stream
  std::stringstream si;
  si.rdbuf()->pubsetbuf(reinterpret_cast<char*>(&data[0]), data.size());

  // read file
  gdcm::File inputFile;
  inputFile.Read(si);
  auto& header = inputFile.GetHeader();
  auto& dataset = inputFile.GetDataSet();

  gdcm::PixmapReader reader;
  reader.SetFile(inputFile);

  // try read
  if (!reader.Read()) {
    std::cerr << "Could not read" << std::endl;
    return {};
  }

  gdcm::Pixmap &pixmap = reader.GetPixmap();

  gdcm::ImageChangeTransferSyntax change;
  change.SetForce(true);
  change.SetCompressIconImage(false);

  const gdcm::TransferSyntax &ts = pixmap.GetTransferSyntax();

  if (ts.IsExplicit()) {
    change.SetTransferSyntax(gdcm::TransferSyntax::ExplicitVRLittleEndian);
  } else {
    change.SetTransferSyntax(gdcm::TransferSyntax::ImplicitVRLittleEndian);
  }

  change.SetInput(pixmap);

  if (!change.Change()) {
    std::cerr << "Could not change the Transfer Syntax" << std::endl;
    return {};
  }

  gdcm::PixmapWriter writer;
  writer.SetFile(reader.GetFile());

  gdcm::File &outFile = writer.GetFile();

  const gdcm::Pixmap &pixout = change.PixmapToPixmapFilter::GetOutput();
  writer.SetPixmap(pixout);

  std::stringstream so;
  writer.SetStream(so);

  if (!writer.Write()) {
    std::cerr << "Failed to write" << std::endl;
    return {};
  }

  std::cout << "Written" << std::endl;
  auto str = so.str();
  std::vector<char> ret(str.begin(), str.end());
  return ret;
}*/

/*Q_INVOKABLE QImage QMLDicomImage::getImage();
{


    //return pixmap;
}*/

/*void QMLDicomImage::openFile(std::vector<char> data)
{
    std::vector<char> bytes = decompressDicomBytes(data);

    QByteArray* qBytes = new QByteArray(reinterpret_cast<const char*>(bytes.data()), bytes.size());

    pixmap.loadFromData(*qBytes, "JPG");
}*/
