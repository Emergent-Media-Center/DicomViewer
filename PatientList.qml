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

        //Structure for listing studies here
        //QAbstractItemModel

        Component {
            id: patientDelegate
            Text {
                width: parent.width;
                height: 20;
                /*function folderClick(path)
                {
                    folderModel.folder = path;
                }*/

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
                    }
                }
            }
        }

        model: PatientListModel {} //abstract model here
        delegate: patientDelegate
    }

    function setData(path)
    {
        console.log("Set data");
        patientList.model.openFolder(path);
        //console.log(patientList.model.patientName);
    }
}
