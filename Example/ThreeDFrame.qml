import QtQuick
import QtQuick3D
import QtQuick.Controls
import QtQuick.Layouts

Frame {
    id: mainFrame
    width: 900
    height: 900
    leftPadding: 0
    topPadding: 0
    rightPadding: 0
    bottomPadding: 0
    Layout.alignment: Qt.AlignRight | Qt.AlignBottom
    Layout.fillHeight: true
    Layout.fillWidth: true

    MouseArea {
        anchors.fill: parent
        onWheel: { currentImage.width -= (wheel.angleDelta.y) / 6 }
    }

    Image {
        //source: myImage
        anchors.fill: parent
        id: currentImage
        width: 450

        Slider {
            id: rotationSlider
            anchors.left: parent.left
            anchors.top: parent.top
            to: 360
            anchors.leftMargin: 20
            anchors.topMargin: 20
            value: 180

            MouseArea {
                anchors.fill: parent
                onWheel: { rotationSlider.value += (wheel.angleDelta.y) / 6 }
            }
        }
    }

    function getImage(i){
        console.log(i);
    }
}
