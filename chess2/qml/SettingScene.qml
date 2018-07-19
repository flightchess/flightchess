import QtQuick 2.0
import VPlay 2.0

Scene {
    width: 500
    height: 500
    id: settingWindow
    visible: false
    signal backPressed

    BackgroundMusic {
        id: bgMusic
        source: "../assets/BG.mp3"
    }
    Image {
        anchors.fill: parent
        source: "../assets/BG.png"
    }

    Column {
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 40
        spacing: 20

        Text {
            font.pixelSize: 36
            text: "Settings"
            color: "black"
        }

        Text {
            font.pixelSize: 24
            text: "Background Music"
            color: "black"
        }
    }

    Column {

        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 77
        spacing: 8

        // button to switch between off and on controls
        Item {
            width: 90
            height: 40
            Image {
                id: on
                anchors.fill: parent
                source: "../assets/Switch_On.png"
                visible: true
                MouseArea {
                    anchors.fill: on
                    onClicked: {
                        bgMusic.pause()
                        off.visible = true
                        on.visible = false
                    }
                }
            }
            Image {
                id: off
                anchors.fill: parent
                source: "../assets/Switch_Off.png"
                visible: false
                MouseArea {
                    anchors.fill: off
                    onClicked: {
                        bgMusic.play()
                        on.visible = true
                        off.visible = false
                    }
                }
            }
        }
    }

    Item {
        id: back
        x: 450
        y: 450
        width: 50
        height: 50
        Image {
            source: "../assets/Back.png"
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: back
            onClicked: {
                backPressed()
            }
        }
    }
}
