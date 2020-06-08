import QtQuick 2.0

Text {
    id: clok
    property double _clock_opacity: 0.8
    property string _clock_olor_main: "#2E2D2E"
    property string _clock_color_component:"#D1D0D2"

    text: myclockEV.clock
    font.wordSpacing: 1.1
    fontSizeMode: Text.FixedSize
    wrapMode: Text.NoWrap
    font.family: "Arial"
    font.bold: true
    style: Text.Normal
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    font.pixelSize: 38
    color: _clock_color_component
    opacity: _clock_opacity
}


