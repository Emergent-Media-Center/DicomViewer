import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel 2.4

ScrollView
{
    width: parent.width
    contentHeight: 300
    clip: true

    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
    ScrollBar.vertical.policy: ScrollBar.AlwaysOn

    signal fileChanged(string path)

    ListView{
        width: parent.width
        height: parent.height

        headerPositioning: ListView.OverlayHeader

        header: ToolBar{
            Label{
                text: "Files"
            }
            width: parent.width;
            z: 10
        }

        FolderListModel{
            id: fileModel
            showDirs: false
            showFiles: false;
            folder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
            //nameFilters: ["*.dcm"]
        }
        Component {
            id: fileDelegate

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

                    text: fileName

                    MouseArea{
                        anchors.fill: parent
                        onClicked:
                        {
                            //var path = fileModel.folder// + "/" + fileName;
                            //console.log("open: " + fileModel.folder + "/" + parent.text)
                            //fileChanged(path);
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
        model: fileModel
        delegate: fileDelegate
    }

    function setFolder(path)
    {
        fileModel.folder = path;
        fileModel.showFiles = true;

        //var path = fileModel.folder// + "/" + fileName;
        //console.log("open: " + fileModel.folder + "/" + parent.text)
        console.log(path);
        fileChanged(path);
    }
}
