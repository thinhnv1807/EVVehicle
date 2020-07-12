import QtQuick 2.0
import "../common"
import QtMultimedia 5.12

Item {
    width: 910
    height: 600
    property double _Media_opacity_text: themeEV.opacityText
    property double _Media_opacity: themeEV.opaccityColorMain2
    property string _Media_colorMain: themeEV.colorMain1
    property string _Media_colorComponent:themeEV.colorMain2

    property bool isPlay: false

    property int addBtnSize: 30


    property var  msPosition: play1.position
    property var minPosition: Math.floor((msPosition/1000/60) << 0)
    property var secPosition: Math.floor((msPosition/1000) % 60)

    property var  msDuration: play1.duration
    property var minDuration: Math.floor((msDuration/1000/60) << 0)
    property var secDuration: Math.floor((msDuration/1000) % 60)


    MediaPlayer{
        id: play1
        source: "qrc:/Song/Cam-Nang-Suni-Ha-Linh-RTee.mp3"
    }



    Item{
        id: bar
        height: 1
        width: 500
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: controlPlayer.top
        anchors.bottomMargin: 20

        Rectangle{
            id: bgrBar
            height: parent.height
            width: parent.width
            color: "black"
        }


        Rectangle{
            id: barL
            height: parent.height
            width: (play1.position/play1.duration)*parent.width
            color: "#98F0F9"
        }

    }


    TextEV{
        id: mediaPosition
        text: minPosition + ":" + secPosition
        anchors.right: bar.left
        anchors.rightMargin: 10
        anchors.verticalCenter: bar.bottom
    }


    TextEV{
        id: mediaDuration
        text: minDuration + ":" + secDuration
        anchors.left: bar.right
        anchors.leftMargin: 10
        anchors.verticalCenter: bar.bottom

    }

    Item{
        id: controlPlayer
        height: 50
        width: 400
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter

        ButtonEV{
            id: btnback
            height:(btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            width:(btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            btnBgr: (btnMou.pressed) ?  "qrc:/image/media/MediaBackPmdpi.png" : "qrc:/image/media/MediaBackmdpi.png"
        }


        ButtonEV{
            id: btnplayPause
            height:  (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            width:  (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            btnBgr: (isPlay == false ) ?
                                     (  (btnMou.pressed)     ? "qrc:/image/media/MediaPlayPmdpi.png"  : "qrc:/image/media/MediaPlaymdpi.png")
                                   : (  (btnMou.pressed)     ? "qrc:/image/media/mediaPausePmdpi.png" : "qrc:/image/media/mediaPausemdpi.png")
            btnMou.onReleased: {
                isPlay =  !isPlay
                isPlay ? play1.play(): play1.pause()
            }

        }


        ButtonEV{
            id: btnnext
            height:  (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            width: (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            btnBgr: (btnMou.pressed) ?"qrc:/image/media/MediaNext_1mdpi.png": "qrc:/image/media/MediaNextmdpi.png"
        }
    }
}
