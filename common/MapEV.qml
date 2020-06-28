import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6

Item {
    width:  490
    height: 440
    visible: true

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(21.028511, 105.804817) // hanoi
        zoomLevel: 17
        color: "#1ad6d6"
        activeMapType: maptyle


    }

    Rectangle{
        id: rec1
        height: 15
        width: parent.width
        color: "#2E2D2E"
        opacity: 0.8
        anchors.bottom: parent.bottom
    }
}
