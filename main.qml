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
        options: FolderDialog.ShowDirsOnly
        currentFolder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
        onAccepted: {
            //folderTree.setFolder(selectedFolder);
            //files.setFolder(selectedFolder);
            openFolder(selectedFolder);
        }
    }

    function openFolder(path){
        patients.clearData();
        studies.clearData();
        series.clearData();

        //files.setFolder(path);
        patients.setData(path);

        //files.enabled = true;
        patients.enabled = true;
        studies.enabled = true;
        series.enabled = true;

        //Hide text
        dragTextRect.visible = false;
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
                        Action { text: "Open DICOM Folder"; onTriggered: fileDialog.open()}
                        MenuSeparator { }
                        Action { text: "Open DICOM" }
                        MenuSeparator { }
                        Action { text: "Export Image" }
                        MenuSeparator { }
                        Action { text: "Copy to Clipboard" }
                        MenuSeparator { }
                        Action { text: "Quit DicomViewer"; onTriggered: close()}
                    }

                    Menu {
                        title: "Edit"
                        Action { text: "Enable Annotations" }
                        MenuSeparator { }
                        Action { text: "Enable Drawing" }
                        MenuSeparator { }
                        Action { text: "Undo"
                            shortcut: ""  }
                        MenuSeparator { }
                        Action { text: "Redo" }
                        MenuSeparator { }
                        Action { text: "Accessibility..." }
                    }

                    Menu {
                        title: "View"
                        Action { text: "Annotations" }
                        MenuSeparator { }
                        Action { text: "Show Dicom Tags" }
                        MenuSeparator { }
                        Action { text: "Fill Viewport" }
                        MenuSeparator { }
                        Action { text: "100%" }
                        Action { text: "200%" }
                        Action { text: "400%" }
                    }

                    Menu {
                        title: "Window"
                        Action { text: "Default Window" }
                        MenuSeparator { }
                        Action { text: "1 Window View" }
                        MenuSeparator { }
                        Action { text: "2 Window View" }
                        MenuSeparator { }
                        Action { text: "3 Window View" }
                        MenuSeparator { }
                        Action { text: "Fullscreen 'F5'" }
                        MenuSeparator { }
                        Action { text: "Close All Windows" }
                    }

                    Menu {
                        title: "Help"
                        Action { text: "About DicomViewer" }
                        MenuSeparator { }
                        Action { text: "Change Language" }
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

                            y: 0

                            RowLayout{
                                Label{
                                    text: "File"
                                    Layout.minimumWidth: fileFrame.width / 4;
                                    Layout.preferredWidth: fileFrame.width / 4;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Patient"
                                    Layout.minimumWidth: fileFrame.width / 4;
                                    Layout.preferredWidth: fileFrame.width / 4;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Study"
                                    Layout.minimumWidth: fileFrame.width / 4;
                                    Layout.preferredWidth: fileFrame.width / 4;
                                    Layout.fillWidth: true;
                                }
                                Label{
                                    text: "Series"
                                    Layout.minimumWidth: fileFrame.width / 4;
                                    Layout.preferredWidth: fileFrame.width / 4;
                                    Layout.fillWidth: true;
                                }
                            }
                        }*/

                        DropArea {
                            id: dropArea;
                            anchors.fill: parent
                            onEntered: {
                                parent.color = "lightgray";
                                //drag.accept (Qt.LinkAction);
                            }
                            onDropped: {
                                //Open folder and show files

                                //if(drop.hasUrls)
                                //{
                                    openFolder(drop.urls[0]);
                                //}
                                //else
                                //{

                                //}

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

                            /*FileList{
                                id: files
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;

                                Component.onCompleted: {
                                    //folderTree.folderChanged.connect(files.setFolder)
                                }
                            }*/

                            PatientList{
                                id: patients
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;
                                Layout.fillHeight: true;

                                Component.onCompleted: {
                                       //files.fileChanged.connect(patients.setData)
                                }
                            }

                            StudyList{
                                id: studies
                                enabled: false
                                Layout.minimumWidth: 50;
                                Layout.preferredWidth: 200;
                                Layout.fillWidth: true;
                                Layout.fillHeight: true;

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
                                Layout.fillHeight: true;

                                Component.onCompleted:
                                {
                                    studies.chooseStudy.connect(series.setData)
                                }
                            }
                        }

                        Rectangle
                        {
                            id: dragTextRect
                            color: "#C0C0C0"

                            Text {
                                id: dragText
                                //anchors.fill: parent

                                anchors.verticalCenter: parent.verticalCenter;
                                anchors.horizontalCenter: parent.horizontalCenter;

                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter

                                text: "Drag and drop folders here!"
                            }

                            x: parent.width / 2
                            y: parent.height / 2

                            width: childrenRect.width + 10
                            height: childrenRect.height + 10

                            anchors.verticalCenter: parent.verticalCenter;
                            anchors.horizontalCenter: parent.horizontalCenter;
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

                MouseArea {
                    anchors.fill: parent
                    onWheel: { frame.leftPadding += (wheel.angleDelta.y) }
                }

                Row {
                    id: row
                    x: 0
                    y: 0
                    rightPadding: 8
                    leftPadding: 8
                    bottomPadding: 8
                    topPadding: 8
                    Layout.fillHeight: true
                    anchors.top: parent.top

                    spacing: 6

                    Repeater {
                                id: frames;
                                model: 100;
                                delegate: Rectangle {
                                    width: 80;
                                    height: width;
                                    color: "white";
                                    border { width: 1; color: "black" }
                                    MouseArea {
                                        id: mouse
                                        // onClicked: send image to frame
                                    }

                                }
                            }
                }

            }
        }
    }

    Item {
        id: __materialLibrary__
    }
}

