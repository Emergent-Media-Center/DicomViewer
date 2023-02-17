import QtQuick
import QtQuick3D
import QtQuick.Controls
import QtQuick.Layouts

Frame {
    width: 900
    height: 900
    leftPadding: 0
    topPadding: 0
    rightPadding: 0
    bottomPadding: 0
    Layout.alignment: Qt.AlignRight | Qt.AlignBottom
    Layout.fillHeight: true
    Layout.fillWidth: true

    View3D {
        id: view3D1
        anchors.fill: parent
        importScene: scene1
        camera: sceneCamera1
        environment: sceneEnvironment1
        SceneEnvironment {
            id: sceneEnvironment1
            specularAAEnabled: false
            clearColor: "#424242"
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene1
            DirectionalLight {
                id: directionalLight1
                eulerRotation.y: 0
                brightness: 1
            }

            PerspectiveCamera {
                id: sceneCamera1
//                lookAtNode: cubeModel1
                z: 350
            }

            Model {
                id: cubeModel1
                source: "#Cube"
                materials: cubeMat1
                eulerRotation.x: 30
                eulerRotation.y: rotationSlider.value
            }
        }

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

    Item {
        id: __materialLibrary__

        SpecularGlossyMaterial {
            id: cubeMat1
            thicknessFactor: 0
            clearcoatAmount: 0
            objectName: "Cube Model Mat"
            specularColor: "#000000"
            albedoColor: "#4aee45"

        }
    }
}
