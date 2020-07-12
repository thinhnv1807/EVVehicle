import QtQuick 2.0

Text {
    id: clok
    property double _clock_opacity: themeEV.opacityText
    property string _clock_olor_main: themeEV.colorMain1
    property string _clock_color_component:themeEV.colorText

    text: myclockEV.clock
    font.wordSpacing: 1.1
    fontSizeMode: Text.FixedSize
    wrapMode: Text.NoWrap
    font.family: themeEV.textFont
    font.bold: true
    style: Text.Normal
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    font.pixelSize: 38
    color: _clock_color_component
    opacity: _clock_opacity
}


