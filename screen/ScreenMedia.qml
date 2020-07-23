import QtQuick 2.12
import "../common"
import QtMultimedia 5.12
import QtGraphicalEffects 1.0

Item {
    id: root
    width: 910
    height: 600
    property double _Media_opacity_text: themeEV.opacityText
    property double _Media_opacity: themeEV.opaccityColorMain2
    property string _Media_colorMain: themeEV.colorMain1
    property string _Media_colorComponent:themeEV.colorMain2
    property int addBtnSize: 30
    property string fileName: ""



    property var  msPosition: play1.position
    property var minPosition: Math.floor((msPosition/1000/60) << 0)
    property var secPosition: Math.floor((msPosition/1000) % 60)

    property var  msDuration: play1.duration
    property var minDuration: Math.floor((msDuration/1000/60) << 0)
    property var secDuration: Math.floor((msDuration/1000) % 60)


    MediaPlayer{
        id:play1

        onStatusChanged: {
            if(status ===  MediaPlayer.EndOfMedia){
                pathView.currentIndex += 1
            }
        }
    }

    Item{
        id: bar
        height: 1
        width: 500
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mediaImg.bottom
        anchors.topMargin: 130


        Rectangle{
            id: bgrBar
            height: parent.height
            width: parent.width
            color: "black"
        }

        Rectangle{
            id: barL
            height: 5
            width: (play1.position/play1.duration)*parent.width
            color: "#98F0F9"
            radius: 5
            anchors.verticalCenter: parent.verticalCenter
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

    Rectangle{
        id: mediaImg
        height: 320
        width: 320
        radius: 3
        color: themeEV.colorMain2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 70
    }

    PathView {
        id: pathView
        height: 300
        width: 910
        anchors.top: mediaImg.top
        z:1
        model: MusicList


        delegate: Item {
            id: item1
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
                    visible: (pathView.currentIndex === index)
                }


                MouseArea{
                    id:mou
                    anchors.fill: redItem

                    onReleased: {

                        if(fileName == modelData){
                            myInforEV.isMediaPlay = !myInforEV.isMediaPlay
                        }else{
                            pathView.currentIndex = index
                            fileName = modelData
                            play1.source = "file:///storage/emulated/0/Music/" + fileName
                        }

                        if(myInforEV.isMediaPlay){
                            play1.play()
                        }else{
                            play1.pause()
                        }
                    }
                }
            }

            TextEV{
                text: modelData
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.bottom
                anchors.topMargin: (pathView.currentIndex == index) ? 60 : 40
            }

        }


        interactive: true

        pathItemCount: 3
        preferredHighlightEnd: 0.5
        preferredHighlightBegin: 0.5

        path: Path {

            startX: 0
            startY: pathView.height * 0.5

            PathAttribute { name: "z"; value: 0 }
            PathAttribute { name: "itemscale"; value: 0.5 }

            PathLine {
                x: pathView.width * 0.5
                y: pathView.height * 0.5
            }

            PathAttribute { name: "z"; value: 100 }
            PathAttribute { name: "itemscale"; value: 1 }

            PathLine {
                x: pathView.width
                y: pathView.height * 0.5
            }

            PathAttribute { name: "z"; value: 0 }
            PathAttribute { name: "itemscale"; value: 0.5 }
        }
    }



    ShadowEV{
        shadowFor: bar
    }

    ShadowEV{
        shadowFor: mediaImg
    }

    AnimatorEV{
        id: animator
        tagetAnimator: root
    }

    Component.onCompleted: {
        pathView.currentIndex = 0
    }
}
