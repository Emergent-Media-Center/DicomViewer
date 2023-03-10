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
import com.DicomItemModels 1.0

ApplicationWindow {
    title: qsTr("Dicom Viewer")
    width: 640
    height: 480
    visible: true

    /*trees: [

    ]*/

    /*&header: ToolBar {
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
    }*/
    /*Frame{
        id: folderFrame
        width:  800
        height: 800
        //title: qsTr("EMC Dicom Viewer v0")

        RowLayout{
            FolderTree{
                id: folderTree

            }

            FileTree{
                id: fileTree

                Component.onCompleted: {
                    //folderTree.folderChanged.connect(fileTree.setFolder)
                }
            }
        }
    }*/
    FolderDialog {
        id: fileDialog
        currentFolder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
        onAccepted: {
            //folderTree.setFolder(selectedFolder);
            fileTree.setFolder(selectedFolder);
        }
    }

    Frame {
        id: windowFrame
        visible: true
        anchors.fill: parent
        focusPolicy: Qt.StrongFocus
        padding: 0
        contentWidth: 0
        wheelEnabled: false
        layer.enabled: false
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        contentHeight: 0
        rightPadding: 0
        bottomPadding: 0
        leftPadding: 0
        topPadding: 0

        ColumnLayout {
            id: columnLayout
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            spacing: 5

            Frame {
                id: menuBar
                width: 200
                height: 200
                leftPadding: 0
                topPadding: 0
                bottomPadding: 0
                rightPadding: 0
                Layout.maximumHeight: 30
                Layout.fillHeight: false
                Layout.fillWidth: true

                MenuBar {
                    id: menuBar1
                    anchors.fill: parent
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Menu {
                        title: "File"
                        Action { text: "Open..."; onTriggered: fileDialog.open() }
                        MenuSeparator { }
                        Action { text: "Quit DicomViewer"; onTriggered: close() }
                    }
                }
            }

            TabBar {
                width: parent.width
                TabButton {
                    text: "View"
                    width: implicitWidth

                    onClicked: stackLayout.currentIndex = 0;
                }
                TabButton {
                    text: "File Select"
                    width: implicitWidth

                    onClicked: stackLayout.currentIndex = 1;
                }
            }

            StackLayout{
                id: stackLayout

                width: 200
                height: 200
                currentIndex: 0

                Frame {
                    id: userViews
                    width: parent.width
                    height: parent.height
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    GridLayout {
                        id: userViewsLayout
                        x: -1
                        y: -26
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        ThreeDFrame {
                            id: threeDFrame2
                        }

                        ThreeDFrame {
                            id: threeDFrame
                        }
                    }
                }

                Frame{
                    id: fileFrame
                    width:  parent.width
                    height: parent.height
                    //title: qsTr("EMC Dicom Viewer v0")

                    Rectangle
                    {
                        anchors.fill: parent

                        /*ToolBar{
                            id: columnHedaers

                            RowLayout{
                                Label{
                                    text: "File"
                                    Layout.minimumWidth: 50;
                                    Layout.preferredWidth: 200;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Patient"
                                    Layout.minimumWidth: 50;
                                    Layout.preferredWidth: 200;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Study"
                                    Layout.minimumWidth: 50;
                                    Layout.preferredWidth: 200;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Series"
                                    Layout.minimumWidth: 50;
                                    Layout.preferredWidth: 200;
                                    Layout.fillWidth: true;
                                }
                            }
                        }*/

                        Text {
                            id: dragText
                            anchors.fill: parent;

                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter

                            text: "Drag and drop folders here!"
                        }

                        DropArea {
                            id: dropArea;
                            anchors.fill: parent
                            onEntered: {
                                parent.color = "lightgray";
                                //drag.accept (Qt.LinkAction);
                            }
                            onDropped: {
                                //Open folder and show files
                                fileTree.setFolder(drop.urls[0]);
                                fileTree.enabled = true;
                                patients.enabled = true;
                                studies.enabled = true;
                                series.enabled = true;

                                //Hide text
                                dragText.visible = false;

                                parent.color = "white"
                            }
                            onExited: {
                                parent.color = "white";
                            }
                        }

                        RowLayout{
                            /*FolderTree{
                                id: folderTree

                            }*/

                            anchors.fill: parent

                            FileTree{
                                id: fileTree
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;

                                Component.onCompleted: {
                                    //folderTree.folderChanged.connect(fileTree.setFolder)
                                }
                            }

                            PatientList{
                                id: patients
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;

                                Component.onCompleted: {
                                       fileTree.fileChanged.connect(patients.setData)
                                }
                            }

                            StudyList{
                                id: studies
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;

                                Component.onCompleted:
                                {
                                    patients.choosePatient.connect(studies.setData)
                                }
                            }

                            SeriesList{
                                id: series
                                enabled: false;
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;

                                Component.onCompleted:
                                {
                                    studies.chooseStudy.connect(series.setData)
                                }
                            }
                        }
                    }
                }
            }


            Frame {
                id: frame
                width: 200
                height: 200
                leftPadding: 0
                Layout.maximumHeight: 100
                Layout.minimumHeight: 100
                Layout.fillHeight: true
                Layout.fillWidth: true
                rightPadding: 0
                bottomPadding: 0
                topPadding: 0

                Row {
                    id: row
                    x: 0
                    y: 0
                    anchors.fill: parent
                    rightPadding: 8
                    leftPadding: 8
                    bottomPadding: 8
                    topPadding: 8
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    spacing: 6

                    Button {
                        id: button
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                        width: height;
                    }

                    Button {
                        id: button1
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button2
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button3
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button4
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button5
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button6
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button7
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button8
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button9
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button10
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }

                    Button {
                        id: button11
                        width: height
                        text: qsTr("Button")
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                    }
                }
            }
        }
    }

    Item {
        id: __materialLibrary__
    }
}


