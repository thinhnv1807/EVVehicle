import QtQuick 2.0



Item {
    id:root
    visible: true
    width: 910
    height: 600

    ListView{
        id:lsv
        height: 600
        width: 300
        spacing: 2
        model: 10
        clip: true
        snapMode: ListView.SnapOneItem

        delegate: Rectangle{
            id: dlg
            height: 100
            width: 300
            color: (lsv.currentIndex == index) ? "red" : "green"
            Text {
                id: song
                text: index
                color: "white"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
            MouseArea{
                anchors.fill: parent
                onPressed: {
                    console.log("list view : ", index)
                }
                onReleased: {
                    lsv.currentIndex = index
                    console.log("list view : ", index)
                }
            }
        }
        anchors.left: parent.left
        anchors.top: parent.top
    }

}
