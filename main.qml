import QtQuick 2.12
import QtQuick.Window 2.12
import "common"
import QtMultimedia 5.12



Window {
    maximumHeight: 682
    maximumWidth: 910
    minimumHeight: 682
    minimumWidth: 910
    height: 682
    width: 910
    visibility: Window.FullScreen

    MainScreen{
        id:scr
    }

    Loader{
        id:load
        source: themeEV.screenEV
        width: 910
        height: 602
        anchors.top: parent.top
        anchors.left: parent.left
    }

    ControlBar{
        id:ctb
        anchors.top: load.bottom
        anchors.left: parent.left
    }


    MediaPlayer{
        id: pler
        source: myInforEV.PathSytemMusic + "Cam-Nang-Suni-Ha-Linh-RTee.mp3"
    }

    property int  diration: pler.status
     onDirationChanged: {
         console.log( "status"  ,pler.duration)
     }



Component.onCompleted: {
    pler.play()
    console.log("run main", pler.error)
    console.log("status", pler.status)
}

}
