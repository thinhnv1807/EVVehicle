import QtQuick 2.0

Text {
    id: root
    property double _textEV_opacity: themeEV.opacityText
    property string _textEV_olor_main: themeEV.colorMain1
    property string _textEV_color_component:themeEV.colorText
    font.wordSpacing: 1.1
    fontSizeMode: Text.FixedSize
    wrapMode: Text.NoWrap
    font.family: themeEV.textFont
    font.bold: true
    style: Text.Normal
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    color: _textEV_color_component
    opacity: _textEV_opacity
}


