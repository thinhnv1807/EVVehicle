import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6

Item {
    id: root
    width:  490
    height: 440
    visible: true

    Rectangle{
        height: root.height
        width: root.width
        clip: true
        Plugin {
            id: mapPlugin
            name: "osm"
        }
        Map {
            height: parent.height + (parent.height*0.1)
            width: parent.width
            plugin: mapPlugin
            center: QtPositioning.coordinate(21.028511, 105.804817) // hanoi
            zoomLevel: 17

            //activeMapType: MapType.GrayStreetMap
        }

    }




    Rectangle{
        id: rec1
        height: 15
        width: parent.width
        color: "#2E2D2E"
        anchors.bottom: parent.bottom
    }



}
