import QtQuick 2.10

Item {
    property Item tagetAnimator: null
    property int  durationAnimator: 300
    property bool runAnimator: true

    OpacityAnimator {
        target: tagetAnimator
        from: 0
        to: 1
        duration: durationAnimator
        running: runAnimator
    }

    XAnimator {
        target: tagetAnimator
        from: tagetAnimator.width
        to: 0
        duration: durationAnimator
        running: runAnimator
    }

}
