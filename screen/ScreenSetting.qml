import QtQuick 2.12
import QtMultimedia 5.0
import "../common"
import QtGraphicalEffects 1.0

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
        model: myModel//10
        clip: true
        snapMode: ListView.SnapOneItem

        highlight: Rectangle{height: dlg.height; width: dlg.width ; color: themeEV.colorMain2; opacity: 0.1}
        highlightMoveDuration : 250
        delegate: Item{
            id: dlg
            height: 100
            width: 300
            Rectangle{
                id: r1
                height: dlg.height
                width: dlg.width
                color: themeEV.colorMain2
                opacity: (lsv.currentIndex == index) ? 0.5 : themeEV.opaccityColorMain2
            }

            Text {
                id: song
                text: index + modelData
                color: themeEV.colorText
                anchors.centerIn: parent
                font.pixelSize: 30
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


    AnimatorEV{
        id: animator
        tagetAnimator: root
    }

    Component.onCompleted: {

    }

}
