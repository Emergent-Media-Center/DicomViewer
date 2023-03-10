// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

#include <QGuiApplication>
#include <QApplication>
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
#include "PixmapImage.h"
#include "FileSystem.h"
#include "CustomTreeView.h"
#include "PatientListModel.h"
#include "StudyListModel.h"
#include "SeriesListModel.h"
#include "navigatorsystem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    //QApplication app(argc, argv);
    qmlRegisterType<QMLDicomImage>("com.DicomImage", 1, 0, "QMLDicomImage");
    qmlRegisterType<PixmapImage>("com.DicomImage", 1, 0, "PixmapImage");

    qmlRegisterType<FileSystem>("com.FileSystem", 1, 0, "FileSystem");

    qmlRegisterType<PatientListModel>("com.DicomItemModels", 1, 0, "PatientListModel");
    qmlRegisterType<StudyListModel>("com.DicomItemModels", 1, 0, "StudyListModel");
    qmlRegisterType<SeriesListModel>("com.DicomItemModels", 1, 0, "SeriesListModel");
    //qmlRegisterType<PatientModelObject>("com.DicomItemModels", 1, 0, "PatientModelObject");

    //PatientListModel patientModel;
    //patientModel.openFile("C:/Users/ddrummond/Documents/EMC/Cases/DICOM/I0");

    QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat());

    QQmlApplicationEngine engine;

    //engine.rootContext()->setContextProperty("patientModel", &patientModel);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
