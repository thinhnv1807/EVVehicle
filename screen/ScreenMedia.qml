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

    property bool isPlay: myInforEV.isMediaPlay

    property int addBtnSize: 30


    property var  msPosition: play1.position
    property var minPosition: Math.floor((msPosition/1000/60) << 0)
    property var secPosition: Math.floor((msPosition/1000) % 60)

    property var  msDuration: play1.duration
    property var minDuration: Math.floor((msDuration/1000/60) << 0)
    property var secDuration: Math.floor((msDuration/1000) % 60)




        ListModelMediaEV{
            id: modelMedia
        }

        MediaPlayer{
            id:play1

            onSourceChanged: {
                console.log(play1.metaData.title)
            }

        }


        Item{
            id: bar
            height: 1
            width: 500
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: controlPlayer.top
            anchors.bottomMargin: 30

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

        Item{
            id: controlPlayer
            height: 50
            width: 400
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter

            ButtonEV{
                id: btnback
                height:(btnMou.pressed) ? (parent.height + addBtnSize): parent.height
                width:(btnMou.pressed) ? (parent.height + addBtnSize): parent.height
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                btnBgr: (btnMou.pressed) ?  "qrc:/image/media/MediaBackPmdpi.svg" : "qrc:/image/media/MediaBackmdpi.svg"
            }


            ButtonEV{
                id: btnplayPause
                height:  (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
                width:  (btnMou.pressed) ? (parent.height + addBtnSize): parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                btnBgr: (isPlay == false ) ?
                            (  (btnMou.pressed)     ? "qrc:/image/media/MediaPlayPmdpi.svg"  : "qrc:/image/media/MediaPlaymdpi.svg")
                          : (  (btnMou.pressed)     ? "qrc:/image/media/mediaPausePmdpi.svg" : "qrc:/image/media/mediaPausemdpi.svg")
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
                btnBgr: (btnMou.pressed) ?"qrc:/image/media/MediaNext_1mdpi.svg": "qrc:/image/media/MediaNextmdpi.svg"
            }

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
                model: myModel

                delegate: Rectangle {
                    id: item
                    height: 300
                    width: 300

                    border.width: 5
                    border.color: "#2f2f2f"
                    color: themeEV.colorMain2

                    scale: PathView.itemscale
                    z: PathView.z

                    TextEV{
                        text: "Song title"
                        anchors.centerIn: parent
                    }

                    MouseArea{
                        anchors.fill: parent
                        onReleased: {
                            play1.source = "file://" + modelData
                            if(isPlay){play1.play()}
                        }
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
            shadowFor: controlPlayer
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
}
