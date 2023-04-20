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

    signal chooseSeries()

    ListView{
        width: parent.width
        //height: 400 //parent.height
        anchors.fill: parent

        id: seriesList

        headerPositioning: ListView.OverlayHeader

        header: ToolBar{
            Label{
                text: "Series"
            }
            width: parent.width;
            z: 10
        }

        Component {
            id: seriesDelegate

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
                            seriesList.model.createVoxelVolume(patientId, studyId, seriesId);
                            seriesList.currentIndex = index;
                            chooseSeries();
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
            id: seriesDelegateHighlight

            Rectangle
            {
                width: parent.width
                height: 20

                color: "#F0F0F0"
            }
        }

        onCountChanged:
        {
            seriesList.currentIndex = -1;
        }

        model: SeriesListModel {} //abstract model here
        delegate: seriesDelegate
        highlight: seriesDelegateHighlight
        highlightFollowsCurrentItem: false
        focus: true
    }

    function setData(patient, study)
    {
        console.log("Set Series Data");
        seriesList.model.setModelData(patient, study);
        //console.log(patientList.model.patientName);
    }

    function clearData()
    {
        seriesList.model.clearModelData();
    }
}
