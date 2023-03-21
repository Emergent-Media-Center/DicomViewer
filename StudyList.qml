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

        //Structure for listing studies here
        //QAbstractItemModel

        Component {
            id: studyDelegate
            Text {
                width: parent.width;
                height: 20;
                /*function folderClick(path)
                {
                    folderModel.folder = path;
                }*/

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
