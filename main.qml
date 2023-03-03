// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import QtQuick3D
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: window
    visible: true
    width:  800
    height: 800
    title: qsTr("EMC Dicom Viewer v0")

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
                        Action { text: "Open DICOM Folder" }
                        MenuSeparator { }
                        Action { text: "Open DICOM" }
                        MenuSeparator { }
                        Action { text: "Export Image" }
                        MenuSeparator { }
                        Action { text: "Copy to Clipboard" }
                        MenuSeparator { }
                        Action { text: "Quit DicomViewer"}
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

            Frame {
                id: userViews
                width: 200
                height: 200
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

