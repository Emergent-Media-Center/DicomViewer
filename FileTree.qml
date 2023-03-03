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

    TreeView{
        width: parent.width
        height: parent.height

        FolderListModel{
            id: fileModel
            showDirs: false
            showFiles: false;
            folder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
            //nameFilters: ["*.dcm"]
        }
        Component {
            id: fileDelegate
            Text {
                /*function folderClick(path)
                {
                    folderModel.folder = path;
                }*/

                text: fileName

                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        var path = fileModel.folder + "/" + fileName;
                        fileChanged(path)//console.log("open: " + fileModel.folder + "/" + parent.text)
                    }
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
    }
}
