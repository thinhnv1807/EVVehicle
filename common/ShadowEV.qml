import QtQuick 2.10
import QtGraphicalEffects 1.0
DropShadow {
    property Item shadowFor: null
    anchors.fill: shadowFor
    horizontalOffset: 3
    verticalOffset: 20
    radius: 12
    samples: 25
    color: "#000000"
    spread: 0
    source: shadowFor
}
