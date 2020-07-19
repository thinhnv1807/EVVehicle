import QtQuick 2.0
Item {
    id: item1
    property Item namePlayer: null
    height: 300
    width: 300
    scale: PathView.itemscale
    z: PathView.z

    Rectangle{
        id: item2
        anchors.fill: parent
        radius: 150
        border.width: 1
        border.color: "#2f2f2f"
        color: "black"
    }

    ShadowEV{
        shadowFor: item2
    }

    Rectangle{
        id: redItem
        height: 100
        width: 100
        radius: 50
        color: "red"
        border.width: 5
        border.color: "white"
        anchors.centerIn: parent

        ButtonEV{
            id: btnplayPause0
            height:  (mou.pressed) ? (30 + addBtnSize): 50
            width:  (mou.pressed) ? (30 + addBtnSize): 50
            anchors.centerIn: redItem
            btnBgr:  "qrc:/image/media/media_play.png"
            visible: !btnplayPause1.visible
        }


        ButtonEV{
            id: btnplayPause1
            height:  (mou.pressed) ? (30 + addBtnSize): 50
            width:  (mou.pressed) ? (30 + addBtnSize): 50
            anchors.centerIn: redItem
            btnBgr:   myInforEV.isMediaPlay ? "qrc:/image/media/media_pause.png" : "qrc:/image/media/media_play.png"
            visible: (fileName !== modelData )
        }

        MouseArea{
            id:mou
            anchors.fill: redItem

            onReleased: {

                if(fileName == modelData){
                    myInforEV.isMediaPlay = !myInforEV.isMediaPlay
                }else{
                    PathView.currentIndex = index
                    fileName = modelData
                    namePlayer.source = "file:///storage/emulated/0/Music/" + fileName
                }

                if(myInforEV.isMediaPlay){
                    namePlayer.play()
                }else{
                    namePlayer.pause()
                }
            }
        }

    }

    TextEV{
        text: modelData
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.bottom
        anchors.topMargin: (PathView.currentIndex === index) ? 60 : 40
    }
}

