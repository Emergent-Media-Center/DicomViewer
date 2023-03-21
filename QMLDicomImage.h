#ifndef QMLDICOMIMAGE_H
#define QMLDICOMIMAGE_H

#include <QObject>
#include <QImage>
#include <QPixmap>

class QMLDicomImage : public QObject
{
    Q_OBJECT
private:
    QPixmap pixmap;

public:
    explicit QMLDicomImage(QObject *parent = Q_NULLPTR);

    //Q_INVOKABLE QString getText(){return "Hello World";}

    std::vector<char> decompressDicomBytes(std::vector<char> data);

    Q_INVOKABLE QPixmap getPixmap();
    void SetPixmap(QPixmap pix) {pixmap = pix;}
    Q_INVOKABLE void openFile(std::vector<char> data);

//signals:

};

#endif // QMLDICOMIMAGE_H
