#include "DicomDisplay.h"

#include "navigatorsystem.h"
#include "voxelvolume.h"

DicomDisplay::DicomDisplay(QObject *parent)
    :QObject(parent)
{

}


QString DicomDisplay::getImage()
{
    vector<vector<vector<double>>>& volume = NavigatorSystem::Instance()->voxelVolume->getVolume();

    qDebug() << "Voxel volume created\n";

    //Write the Image to a PNG file
    float side = NavigatorSystem::Instance()->voxelVolume->GetRows();

    QImage* img = dicomImg.getImage();
    *img = QImage(side, side, QImage::Format_Grayscale8);
    QRgb value;

    for(int i =0; i < side; i++)
    {
        for(int j = 0; j < side; j++)
        {
            //value = dicomImg.RemapValue(volume[0][i][j]);
            //value = dicomImg.RemapValue(volume[0][i][j], 0, 255);
            value = dicomImg.GetWindowedValue(volume[0][i][j], 2047, 4096);
            img->setPixel(i, j, value);
            //img->setPixel(i, j, volume[0][i][j]);
        }
    }

    //https://forum.qt.io/topic/69209/how-to-display-a-qpixmap-qimage-in-qml/4
    QByteArray bArray;
    QBuffer buffer(&bArray);
    buffer.open(QIODevice::WriteOnly);
    img->save(&buffer, "JPEG");

    QString image("data:image/jpg;base64,");
    image.append(QString::fromLatin1(bArray.toBase64().data()));

    return image;
}

QString DicomDisplay::getImage(int center, int range)
{
    vector<vector<vector<double>>>& volume = NavigatorSystem::Instance()->voxelVolume->getVolume();

    qDebug() << "Voxel volume created\n";

    //Write the Image to a PNG file
    float side = NavigatorSystem::Instance()->voxelVolume->GetRows();

    QImage* img = dicomImg.getImage();
    *img = QImage(side, side, QImage::Format_Grayscale8);
    QRgb value;

    for(int i =0; i < side; i++)
    {
        for(int j = 0; j < side; j++)
        {
            //value = dicomImg.RemapValue(volume[0][i][j]);
            //value = dicomImg.RemapValue(volume[0][i][j], 0, 255);
            value = dicomImg.GetWindowedValue(volume[0][i][j], center, range);
            img->setPixel(i, j, value);
            //img->setPixel(i, j, volume[0][i][j]);
        }
    }

    //https://forum.qt.io/topic/69209/how-to-display-a-qpixmap-qimage-in-qml/4
    QByteArray bArray;
    QBuffer buffer(&bArray);
    buffer.open(QIODevice::WriteOnly);
    img->save(&buffer, "JPEG");

    QString image("data:image/jpg;base64,");
    image.append(QString::fromLatin1(bArray.toBase64().data()));

    return image;
}
