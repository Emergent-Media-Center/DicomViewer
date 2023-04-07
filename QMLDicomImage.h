#ifndef QMLDICOMIMAGE_H
#define QMLDICOMIMAGE_H

#include <QObject>
#include <QImage>
#include <QPixmap>

#include <QtCore>
#include <QtGui>
#include <QHash>

class QMLDicomImage : public QObject
{
    Q_OBJECT
private:
    QImage img;

    int lowerRange = 0;
    int upperRange = 4096;

public:
    const int MIN_RANGE = 0;
    const int MAX_RANGE = 4096;

    explicit QMLDicomImage(QObject *parent = Q_NULLPTR);

    //Q_INVOKABLE QString getText(){return "Hello World";}

    //std::vector<char> decompressDicomBytes(std::vector<char> data);

    Q_INVOKABLE QImage* getImage() { return &img; }
    void setImage(QImage newImg) { img = newImg; }
    void SetPixel(int x, int y, QRgb rgb) { img.setPixel(x, y, rgb); }

    double RemapValue(int value);
    void PrintImage();

//signals:

};

#endif // QMLDICOMIMAGE_H
