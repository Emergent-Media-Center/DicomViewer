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
        //height: 400 //parent.height
        anchors.fill: parent

        id: seriesList

        //Structure for listing studies here
        //QAbstractItemModel

        Component {
            id: seriesDelegate
            Text {
                width: parent.width;
                height: 20;
                /*function folderClick(path)
                {
                    folderModel.folder = path;
                }*/

                text: seriesId

                Component.onCompleted:
                {
                    console.log("Study Id: " + seriesId);
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        console.log("Patient: " + patientId + "   Study: " + studyId + "   Chose Study: " + seriesId)
                    }
                }
            }
        }

        model: SeriesListModel {} //abstract model here
        delegate: seriesDelegate
    }

    function setData(patient, study)
    {
        console.log("Set Series Data");
        seriesList.model.setModelData(patient, study);
        //console.log(patientList.model.patientName);
    }
}
