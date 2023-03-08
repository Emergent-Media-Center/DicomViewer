import QtQuick
import QtQuick.Controls
import com.DicomItemModels 1.0

ScrollView
{
    width: 200 //parent.width
    contentHeight: 300
    clip: true

    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
    ScrollBar.vertical.policy: ScrollBar.AlwaysOn

    ListView{
        //width: 200 //parent.width
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

                text: "Patient Name: " + patientName

                Component.onCompleted:
                {
                    console.log("Patient Name: " + patientName);
                }

                //MouseArea{
                    //anchors.fill: parent
                    //onClicked: console.log("open: " + fileModel.folder + "/" + parent.text)
                //}
            }
        }

        model: patientModel //abstract model here
        delegate: patientDelegate
    }

    function setData(path)
    {
        console.log("Set data");
        patientModel.openFolder(path);
        //console.log(patientList.model.patientName);
    }
}
