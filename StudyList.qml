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

    signal chooseStudy(string patient, string study)

    ListView{
        width: parent.width
        //height: 400 //parent.height
        anchors.fill: parent

        id: studyList

        headerPositioning: ListView.OverlayHeader

        header: ToolBar{
            Label{
                text: "Studies"
            }
            width: parent.width;
            z: 10
        }

        Component {
            id: studyDelegate
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

                    text: studyId

                    Component.onCompleted:
                    {
                        console.log("Study Id: " + studyId);
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked:
                        {
                            console.log("Patient: " + patientId + "   Chose Study: " + studyId)
                            chooseStudy(patientId, studyId)
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

        model: StudyListModel {} //abstract model here
        delegate: studyDelegate
    }

    function setData(id)
    {
        console.log("Set Study Data");
        studyList.model.setModelData(id);
        //console.log(patientList.model.patientName);
    }

    function clearData()
    {
        studyList.model.clearModelData();
    }
}
