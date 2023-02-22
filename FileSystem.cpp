#include "FileSystem.h"

FileSystem::FileSystem(QWidget* parent) :
    QDialog(parent)
{
    QString rootPath = "C:/";    dirModel = new QFileSystemModel(this);
    dirModel->setRootPath(rootPath);
}

FileSystem::~FileSystem()
{

}

//Displays dirModel in passed tree view
void FileSystem::setTree(QTreeView* treeView)
{
    if(!treeView)
    {
        return;
    }

    treeView->setModel(dirModel);
}
