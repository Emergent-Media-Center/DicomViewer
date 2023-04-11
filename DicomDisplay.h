#ifndef DICOMDISPLAY_H
#define DICOMDISPLAY_H

#include <QImage>
#include <QString>

#include "QMLDicomImage.h"

class DicomDisplay : public QObject
{
    Q_OBJECT
public:
    explicit DicomDisplay(QObject *parent = nullptr);

    Q_INVOKABLE QString getImage();
    Q_INVOKABLE QString getImage(int center, int range);
private:
    QMLDicomImage dicomImg;

signals:

};

#endif // DICOMDISPLAY_H
