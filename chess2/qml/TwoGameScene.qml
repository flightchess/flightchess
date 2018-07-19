import QtQuick 2.0
import VPlay 2.0

Scene {
    width: 700
    height: 700

    visible: false
    Image {
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/airport1.png"
    }

    TwoControl {
        id:twocontrol
    }
}
