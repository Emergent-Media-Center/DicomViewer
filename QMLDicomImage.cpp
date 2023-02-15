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
    std::string filename = "imagem1.dcm";
    std::vector<char> charArray = std::vector<char>(filename.begin(), filename.end());
    openFile(charArray);
}


//Takes in a char array of a file name
std::vector<char> QMLDicomImage::decompressDicomBytes(std::vector<char> data) {
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
}

Q_INVOKABLE QPixmap QMLDicomImage::getPixmap()
{
    return pixmap;
}

void QMLDicomImage::openFile(std::vector<char> data)
{
    std::vector<char> bytes = decompressDicomBytes(data);

    QByteArray* qBytes = new QByteArray(reinterpret_cast<const char*>(bytes.data()), bytes.size());

    pixmap.loadFromData(*qBytes, "JPG");
}
