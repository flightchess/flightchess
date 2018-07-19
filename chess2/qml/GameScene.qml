import QtQuick 2.0
import VPlay 2.0

Scene {
    width: 700
    height: 700

    visible: false

    signal menuScenePressed

    Image {
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/airport1.png"
    }

    Control {
        id: control
    }
    Item {
        x: 650
        y: 0
        width: 50
        height: 50
        Image {
            source: "../assets/Back.png"
            anchors.fill: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: menuScenePressed()
        }
    }
}
