import QtQuick 2.12
import "../common"
Item {
    id: root
    height: 600
    width: 910
    MapEV{
        id:map
        height: 600
        width: 910

    }

    AnimatorEV{
        id: animator
        tagetAnimator: root
    }



}
