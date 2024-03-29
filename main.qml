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
    id: dicomApp
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

    DicomDisplay
    {
        id: display1
    }

    FileDialog {
        id: fileDialog
        //options: FolderDialog.ShowDirsOnly
        currentFolder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
        onAccepted: {
            //folderTree.setFolder(selectedFolder);
            //files.setFolder(selectedFolder);

            openFile(selectedFile);
            //openFolder(selectedFiles()[0]);
        }
    }

    FolderDialog {
        id: folderDialog
        options: FolderDialog.ShowDirsOnly
        currentFolder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
        onAccepted: {
            //folderTree.setFolder(selectedFolder);
            //files.setFolder(selectedFolder);

            openFile(selectedFolder);
            //openFolder(selectedFiles()[0]);
        }
    }

    /*function openFolder(path){
        patients.clearData();
        studies.clearData();
        series.clearData();

        //files.setFolder(path);
        patients.setFolder(path);

        //files.enabled = true;
        patients.enabled = true;
        studies.enabled = true;
        series.enabled = true;

        //Hide text
        dragTextRect.visible = false;
    }*/

    function openFile(path){
        patients.clearData();
        studies.clearData();
        series.clearData();

        //files.setFolder(path);
        patients.setFile(path);

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
                        Action { text: "Open DICOM Folder"; onTriggered: folderDialog.open()}
                        MenuSeparator { }
                        Action { text: "Open DICOM"; onTriggered: fileDialog.open() }
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
                        Action { text: "Undo <i>Ctrl+Z</i>" ; shortcut: "Ctrl+Z" }
                        MenuSeparator { }
                        Action { text: "Redo"; shortcut: "Ctrl+Y" }
                        MenuSeparator { }
                        Action { text: "Accessibility..." }
                    }

                    Menu {
                        title: "View"
                        Action { text: "Annotations"; shortcut: "F4"; onTriggered: annotations.visible = true }
                        MenuSeparator { }
                        Action { text: "Show Dicom Tags" }
                        MenuSeparator { }
                        Action { text: "Fill Viewport" }
                        MenuSeparator { }
                        Action { text: "100% <i>F1</i>"; shortcut: "F1"; onTriggered: {dicomApp.width = 640; dicomApp.height = 480}}
                        Action { text: "200% <i>F2</i>"; shortcut: "F2"; onTriggered: {dicomApp.width = 1280; dicomApp.height = 960}}
                        Action { text: "400% <i>F3</i>" ; shortcut: "F3"; onTriggered: {dicomApp.width = 2560; dicomApp.height = 1920} }
                    }

                    Menu {
                        title: "Window"
                        Action { text: "Default Window"; onTriggered: threeDFrame.visible = true, ThreeDFrame3.visible = false; }
                        MenuSeparator { }
                        Action { text: "1 Window View"; onTriggered: threeDFrame.visible = false; }
                        MenuSeparator { }
                        Action { text: "2 Window View"; onTriggered: threeDFrame.visible = true; }
                        MenuSeparator { }
                        Action { text: "3 Window View"; onTriggered: threeDFrame3.visible = true, splitter.visible = true; }
                        MenuSeparator { }
                        Action { text: "Fullscreen 'F5'"; shortcut: "F5"; onTriggered: {
                                if (dicomApp.visibility === Window.FullScreen)
                                    dicomApp.visibility = Window.AutomaticVisibility;
                                else
                                    dicomApp.visibility = Window.FullScreen;
                            }}
                        MenuSeparator { }
                        Action { text: "Close All Windows"; onTriggered: threeDFrame.visible = false, threeDFrame3.visible = false; }
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
                    text: "File Select"
                    width: implicitWidth

                    onClicked: stackLayout.currentIndex = 0;
                }
                TabButton {
                    id: dicomView1
                    text: "View"
                    width: implicitWidth

                    enabled: false

                    onClicked: stackLayout.currentIndex = 1;

                    Component.onCompleted: {
                        series.chooseSeries.connect(dicomView1.enableView);
                    }

                    function enableView()
                    {
                        dicomView1.enabled = true;
                    }
                }
            }

            StackLayout{
                id: stackLayout

                width: 200
                height: 200
                currentIndex: 0

                /*Frame {
                    id: userViews
                    width: parent.width
                    height: parent.height
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    GridLayout {
                        id: userViewsLayout
                        x: -1
                        y: -26
                        z: 1
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        ThreeDFrame {
                            id: threeDFrame2
                            visible: true
                        }

                        ThreeDFrame {
                            id: threeDFrame
                            visible: true
                        }

                        SplitView {
                            id: splitter
                            anchors.horizontalCenter: parent.left
                            orientation: Qt.Horizontal
                            visible: false

                            ThreeDFrame {
                                id: threeDFrame3
                                visible: false
                                width: userViews.width
                            }
                        }
                    }
                }*/

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

                                /*if(drop.hasUrls)
                                {
                                    openFile(drop.urls[0]);

                                    //openFile(drop.urls[0]);
                                }*/

                                openFile(drop.urls[0]);

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

                Rectangle {
                    anchors.fill: parent;

                    color: "#000000";

                    Image
                    {
                        id: dicomImage
                        //width: 900
                        //height: 900
                        anchors.fill: parent;


                        fillMode: Image.PreserveAspectFit

                        Component.onCompleted:
                        {
                            series.chooseSeries.connect(dicomImage.setImage);
                        }

                        function setImage()
                        {
                            dicomImage.source = display1.getImage();
                        }

                        RangeSlider {
                            property int lastDiff
                            property int lastFirstValue
                            property int lastSecondValue

                            id: windowSlider
                            anchors.left: parent.left
                            anchors.top: parent.top
                            from: 0
                            to: 4095
                            anchors.leftMargin: 20
                            anchors.topMargin: 20
                            first.value: 2048   //First is center
                            second.value: 4095  //Second is range

                            Rectangle
                            {
                                id: mirroredRange
                                x: windowSlider.first.handle.x - (windowSlider.second.handle.x - windowSlider.first.handle.x)
                                y: windowSlider.second.handle.y + windowSlider.height / 3
                                height: windowSlider.height / 3
                                width: windowSlider.second.handle.x - windowSlider.first.handle.x

                                color: "dodgerblue"
                            }

                            //Note: This code has only been tested with windowSlider.from at 0
                            first.onMoved:
                            {
                                if(windowSlider.first.value < windowSlider.lastDiff)
                                {
                                    windowSlider.setValues(windowSlider.lastDiff, windowSlider.lastDiff + windowSlider.lastDiff);
                                }
                                else if(windowSlider.first.value + windowSlider.lastDiff > windowSlider.to)
                                {
                                    windowSlider.setValues(windowSlider.to - windowSlider.lastDiff, windowSlider.to);
                                }
                                else
                                {
                                    windowSlider.setValues(windowSlider.first.value, windowSlider.first.value + windowSlider.lastDiff);

                                    //console.log("First - " + windowSlider.first.value + "  Second - " + windowSlider.second.value + "  Diff - " + windowSlider.lastDiff);
                                }

                                dicomImage.source = display1.getImage(windowSlider.first.value, windowSlider.second.value);
                                windowSlider.lastDiff = windowSlider.second.value - windowSlider.first.value;
                            }

                            //Note: This code has only been tested with windowSlider.from at 0
                            second.onMoved:
                            {
                                var newDiff = windowSlider.second.value - windowSlider.first.value;
                                if(windowSlider.first.value - newDiff < windowSlider.from)
                                {
                                    windowSlider.setValues(newDiff, windowSlider.second.value)
                                }

                                dicomImage.source = display1.getImage(windowSlider.first.value, windowSlider.second.value);

                                windowSlider.lastDiff = windowSlider.second.value - windowSlider.first.value;
                            }

                            Component.onCompleted:
                            {
                                windowSlider.lastDiff = windowSlider.second.value - windowSlider.first.value;
                                windowSlider.lastFirstValue = windowSlider.first.value;
                                windowSlider.lastSecondValue = windowSlider.second.value;
                            }
                        }

                        /*Slider {
                            id: rangeSlider
                            anchors.left: parent.left
                            anchors.top: parent.top
                            from: 0
                            to: 4095
                            anchors.leftMargin: 20
                            anchors.topMargin: 40
                            value: 4095

                            MouseArea {
                                anchors.fill: parent
                                onWheel:
                                {
                                    rangeSlider.value += (wheel.angleDelta.y) / 6;
                                    dicomImage.source = display1.getImage(centerSlider.value, rangeSlider.value);
                                }
                            }
                        }*/
                    }
                }
            }


            /*Frame {
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
                                        anchors.fill: parent
                                        id: mouse
                                        onClicked: {
                                            threeDFrame2.getImage(8)
                                        }
                                    }
                                }
                            }
                }

            }*/
        }
    }

    Item {
        id: __materialLibrary__
    }
}

