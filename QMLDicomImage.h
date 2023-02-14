#ifndef QMLDICOMIMAGE_H
#define QMLDICOMIMAGE_H

#include <QObject>

class QMLDicomImage : public QObject
{
    Q_OBJECT
public:
    explicit QMLDicomImage(QObject *parent = nullptr);

    Q_INVOKABLE std::string getText(){return "Hello World";}

//signals:

};

#endif // QMLDICOMIMAGE_H
