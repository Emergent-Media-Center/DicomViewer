import QtQuick
import QtQuick.Controls

ScrollView
{
    width: parent.width
    contentHeight: 300
    clip: true

    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
    ScrollBar.vertical.policy: ScrollBar.AlwaysOn

    TreeView{
        width: parent.width
        height: parent.height

        //Structure for listing studies here
        //QAbstractItemModel

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
                    onClicked: console.log("open: " + fileModel.folder + "/" + parent.text)
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
