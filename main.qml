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
                        Action { text: "Open..." }
                        MenuSeparator { }
                        Action { text: "Quit DicomViewer" }
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


