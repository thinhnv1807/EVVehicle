import QtQuick 2.10

Item {
    property Item tagetAnimator: null
    property int  durationAnimator: 350
    property bool runAnimator: true

    onRunAnimatorChanged: {
        animatorX.start()
        animatorOpaccity.start()
    }

    NumberAnimation {
        id: animatorX
        target: tagetAnimator
        property: "x"
        easing.type: Easing.OutCirc
        duration: durationAnimator
        from: tagetAnimator.width
        to: 0
        running: runAnimator
    }

    NumberAnimation {
        id: animatorOpaccity
        target: tagetAnimator
        property: "opacity"
        easing.type: Easing.InCubic
        duration: durationAnimator
        from: 0
        to: 1
        running: runAnimator
    }
}
