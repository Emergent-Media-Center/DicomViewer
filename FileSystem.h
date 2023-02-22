#ifndef FILESYSTEM_H
#define FILESYSTEM_H

#include <QtCore>
#include <QtGui>
#include <QTreeView>
#include <QDialog>
#include <QWidget>

class FileSystem : public QDialog
{
    Q_OBJECT
public:
    explicit FileSystem(QWidget* parent = 0);
    ~FileSystem();

    bool initializeWidget();

public slots:
    Q_INVOKABLE void setTree(QTreeView* treeView);

private:
    QFileSystemModel* dirModel;     //Current Directory
    QFileSystemModel* fileModel;   //Current Files


};

#endif // FILESYSTEM_H
