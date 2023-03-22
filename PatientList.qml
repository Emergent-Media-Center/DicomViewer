import QtQuick
import QtQuick.Controls
import com.DicomItemModels 1.0

ScrollView
{
    width: parent.width
    contentHeight: 300
    clip: true

    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
    ScrollBar.vertical.policy: ScrollBar.AlwaysOn

    signal choosePatient(string patient)

    ListView{
        width: parent.width
        //height: 400 //parent.height
        anchors.fill: parent

        id: patientList

        headerPositioning: ListView.OverlayHeader

        header: ToolBar{
            Label{
                text: "Patients"
            }
            width: parent.width;
            z: 10
        }

        Component {
            id: patientDelegate

            Item{
                width: parent.width;
                height: 20;

                Text {
                    id: delegateText

                    width: parent.width;
                    height: parent.height;

                    anchors.fill: parent;
                    anchors.topMargin: 1
                    anchors.bottomMargin: 1

                    text: patientId

                    Component.onCompleted:
                    {
                        console.log("Patient Id: " + patientId);
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked:
                        {
                            console.log("Chose " + patientId);
                            choosePatient(patientId);
                            patientList.currentIndex = index;
                        }
                    }
                }

                Rectangle
                {
                    height: 1;
                    color: "#F0F0F0"

                    anchors.left: delegateText.left
                    anchors.right: delegateText.right
                    anchors.bottom: delegateText.bottom
                }
            }
        }

        Component
        {
            id: patientDelegateHighlight

            Rectangle
            {
                width: parent.width
                height: 20

                color: "#F0F0F0"
            }
        }

        onCountChanged:
        {
            patientList.currentIndex = -1;
        }

        model: PatientListModel {} //abstract model here
        delegate: patientDelegate
        highlight: patientDelegateHighlight
        highlightFollowsCurrentItem: false
        focus: true
    }

    function setData(path)
    {
        console.log("Set data");
        patientList.model.openFolder(path);
        //console.log(patientList.model.patientName);
    }

    function clearData()
    {
        patientList.model.clearModelData();
    }
}
