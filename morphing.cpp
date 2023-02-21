// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick3D/qquick3d.h>

#include <QTreeView>
#include <QQmlContext>

#include <iostream>
#include <string>
#include <vector>

#include <getopt.h>
#include <stdio.h>  /* for printf */
#include <stdlib.h> /* for exit */
#include <string.h>
#include <fstream>
#include <sstream>

#include "QMLDicomImage.h"
#include "FileSystem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<QMLDicomImage>("com.DicomImage", 1, 0, "QMLDicomImage");
    qmlRegisterType<QMLDicomImage>("com.DicomImage", 1, 0, "PixmapImage");

    QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat());

    QQmlApplicationEngine engine;

    FileSystem fileSystem = FileSystem();
    //engine.rootContext()->setContextProperty("fileSystem", fileSystem);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;



    for(QObject* obj : engine.rootObjects())
    {
        QObject::connect(obj, SIGNAL(setFileSystemTree(QVariantMap)), &fileSystem, SLOT(setTree(QVariantMap)));
    }

    return app.exec();
}
