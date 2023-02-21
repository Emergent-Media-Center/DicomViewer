#include "FileSystem.h"

#include <QQuickView>

FileSystem::FileSystem(QObject* parent)
{
    QString rootPath = "C:/";
    dirModel = new QFileSystemModel(this);
    dirModel->setRootPath(rootPath);

    QQuickView view(QUrl::fromLocalFile("main.qml"));

    QMetaObject::invokeMethod(view.rootObject(), "setFileSystemTree",
                              Q_ARG(QVariant, QVariant:))
}

FileSystem::~FileSystem()
{

}

//Displays dirModel in passed tree view
void FileSystem::setTree(QVariant treeView)
{
    tree.setModel(dirModel);
}
