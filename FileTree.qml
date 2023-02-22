import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel 2.4

TreeView{
    width: 200
    height: 400

    FolderListModel{
        id: fileModel
        showDirs: false
        folder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
    }
    Component {
        id: fileDelegate
        Text {
            /*function folderClick(path)
            {
                folderModel.folder = path;
            }*/

            text: fileName
        }
    }

    function setFolder(path)
    {
        fileModel.folder = path;
    }

    model: fileModel
    delegate: fileDelegate
}
