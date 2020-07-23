import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.12

Item {
    id: root
    width:  490
    height: 440
    visible: true


    Rectangle{
        height: root.height
        width: root.width
        clip: true

        PositionSource {
            id: src
            updateInterval: 1000
            active: true
            onPositionChanged: {
                 map1.center = src.position.coordinate;
            }
        }
        Plugin {
            id: mapPlugin
            name: "osm"
        }
        Map {
            id:map1
            height: parent.height + (parent.height*0.1)
            width: parent.width
            plugin: mapPlugin
            zoomLevel: 24
            color: themeEV.colorMain1
        }

    }




//    Rectangle{
//        id: rec1
//        height: 15
//        width: parent.width
//        color: "#2E2D2E"
//        anchors.bottom: parent.bottom
//    }



}
