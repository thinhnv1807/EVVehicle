import QtQuick 2.12
import QtQuick.Window 2.12
import "../common"
import QtGraphicalEffects 1.0


Item {
    id:root
    visible: true
    width: 910
    height: 682
    property double _home_opacity_text: themeEV.opacityText
    property double _home_opacity: themeEV.opaccityColorMain2
    property string _home_colorMain: themeEV.colorMain1
    property string _home_colorComponent:themeEV.colorMain2

    Item {
        id: boxinfor
        height: 590
        width: 300
        anchors.left: parent.left
        anchors.top: parent.top
        Rectangle{
            id:infor
            color: _home_colorComponent
            opacity: _home_opacity
            height: 590
            width: 300
        }

        Speed{
            id:speed
            anchors.left: infor.left
            anchors.leftMargin: (infor.width - width)/2
        }

        BatteryType2{
            id: bat
            width: 100
            height: 250
            anchors.top: parent.top
            anchors.topMargin: 172
            anchors.left: infor.left
            anchors.leftMargin: 20
        }

        ShadowEV{
            shadowFor: speed
        }

        ShadowEV{
            shadowFor: bat
        }

    }

    Item {
        id: box2
        height: 590
        width: 595
        anchors.right: parent.right
        anchors.top: parent.top

        Rectangle{
            id: controll
            color: _home_colorComponent
            opacity:_home_opacity
            height: 590
            width: 595
        }
    }

    AnimatorEV{
        id: animator
        tagetAnimator: root
    }
}

