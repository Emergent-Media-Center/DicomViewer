#ifndef FILESYSTEM_H
#define FILESYSTEM_H

#include <QtCore>
#include <QtGui>
#include <QTreeView>

class FileSystem : public QObject
{
    Q_OBJECT
public:
    explicit FileSystem(QObject* parent = 0);
    ~FileSystem();

public slots:
    Q_INVOKABLE void setTree(QVariant treeView);

private:
    QFileSystemModel* dirModel;     //Current Directory
    QFileSystemModel* fileModel;   //Current Files
};

#endif // FILESYSTEM_H
