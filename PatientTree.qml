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

    ListView{
        width: parent.width
        height: parent.height

        //Structure for listing studies here
        //QAbstractItemModel
        PatientModelObject{
            id: patientModel;
        }

        Component {
            id: patientDelegate
            Text {
                /*function folderClick(path)
                {
                    folderModel.folder = path;
                }*/

                text: patientName

                MouseArea{
                    anchors.fill: parent
                    //onClicked: console.log("open: " + fileModel.folder + "/" + parent.text)
                }
            }
        }

        model: patientModel //abstract model here
        delegate: patientDelegate
    }

    function setData(path)
    {
        patientModel.setModelData();
    }
}
