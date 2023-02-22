// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtCore
import QtQuick
import QtQuick.Dialogs
import QtQuick3D
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.folderlistmodel 2.4

import com.DicomImage 1.0
import com.FileSystem 1.0
import com.CustomTreeView 1.0

ApplicationWindow {
    title: qsTr("Dicom Viewer")
    width: 640
    height: 480
    visible: true

    /*trees: [

    ]*/

    header: ToolBar {
        RowLayout{
            Button {
                text: qsTr("Choose Folder...")
                onClicked: fileDialog.open()
            }

            Button{
                text: "Back"
                onClicked: {
                    var parentFolder = folderTree.getParentFolder();
                    folderTree.setFolder(parentFolder);
                    fileTree.setFolder(parentFolder);
                }

            }
        }
    }

    Frame{
        id: folderFrame
        anchors.fill: parent

        RowLayout{
            FolderTree{
                id: folderTree

            }

            FileTree{
                id: fileTree

                Component.onCompleted: {
                    folderTree.folderChanged.connect(fileTree.setFolder)
                }
            }
        }
    }

    FolderDialog {
        id: fileDialog
        currentFolder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
        onAccepted: {
            folderTree.setFolder(selectedFolder);
            fileTree.setFolder(selectedFolder);
        }
    }
}
