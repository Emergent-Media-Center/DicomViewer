import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel 2.4

TreeView{
    width: 200
    height: 400

    signal folderChanged(string path)

    FolderListModel{
        id: folderModel
        showFiles: false
        folder: StandardPaths.standardLocations(StandardPaths.HomeLocation)[0]
    }

    Component {
        id: folderDelegate
        Button {
            /*function folderClick(path)
            {
                folderModel.folder = path;
            }*/

            text: fileName
            onClicked:
            {
                var path = folderModel.folder + "/" + fileName;
                setFolder(path);
                folderChanged(path);
            }
        }
    }

    function setFolder(path)
    {
        folderModel.folder = path;
    }

    function getParentFolder()
    {
        return folderModel.parentFolder
    }

    model: folderModel
    delegate: folderDelegate
}
