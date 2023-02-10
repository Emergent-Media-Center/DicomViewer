// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick3D/qquick3d.h>


#include "gdcmDataSet.h"
#include "gdcmFileMetaInformation.h"
#include "gdcmImageChangeTransferSyntax.h"
#include "gdcmPixmapReader.h"
#include "gdcmPixmapWriter.h"
#include "gdcmReader.h"
#include "gdcmWriter.h"

#include <iostream>
#include <string>
#include <vector>

#include <getopt.h>
#include <stdio.h>  /* for printf */
#include <stdlib.h> /* for exit */
#include <string.h>
#include <fstream>
#include <sstream>

std::vector<char> decompressDicomBytes(std::vector<char> data) {
  // Debug is a little too verbose
  gdcm::Trace::SetDebug(false);
  gdcm::Trace::SetWarning(false);
  gdcm::Trace::SetError(false);

  gdcm::FileMetaInformation::SetSourceApplicationEntityTitle("gdcmconv");

  // convert bytes into stream
  std::stringstream si;
  si.rdbuf()->pubsetbuf(reinterpret_cast<char*>(&data[0]), data.size());

  // read file
  gdcm::File inputFile;
  inputFile.Read(si);
  auto& header = inputFile.GetHeader();
  auto& dataset = inputFile.GetDataSet();

  gdcm::PixmapReader reader;
  reader.SetFile(inputFile);

  // try read
  if (!reader.Read()) {
    std::cerr << "Could not read" << std::endl;
    return {};
  }

  gdcm::Pixmap &pixmap = reader.GetPixmap();

  gdcm::ImageChangeTransferSyntax change;
  change.SetForce(true);
  change.SetCompressIconImage(false);

  const gdcm::TransferSyntax &ts = pixmap.GetTransferSyntax();

  if (ts.IsExplicit()) {
    change.SetTransferSyntax(gdcm::TransferSyntax::ExplicitVRLittleEndian);
  } else {
    change.SetTransferSyntax(gdcm::TransferSyntax::ImplicitVRLittleEndian);
  }

  change.SetInput(pixmap);

  if (!change.Change()) {
    std::cerr << "Could not change the Transfer Syntax" << std::endl;
    return {};
  }

  gdcm::PixmapWriter writer;
  writer.SetFile(reader.GetFile());

  gdcm::File &outFile = writer.GetFile();

  const gdcm::Pixmap &pixout = change.PixmapToPixmapFilter::GetOutput();
  writer.SetPixmap(pixout);

  std::stringstream so;
  writer.SetStream(so);

  if (!writer.Write()) {
    std::cerr << "Failed to write" << std::endl;
    return {};
  }

  std::cout << "Written" << std::endl;
  auto str = so.str();
  std::vector<char> ret(str.begin(), str.end());
  return ret;
}


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat());

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
