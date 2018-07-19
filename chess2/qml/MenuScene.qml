import QtQuick 2.0
import VPlay 2.0
import QtQuick.Controls 2.2
import QtQuick.Particles 2.0


//import QtQuick.Layouts 1.3
Scene {
    id: menuScene

    width: 700
    height: 700

    visible: false

    signal gameChoiceScenePressed
    signal settingPressed
    signal help1Pressed
    Image {
        source: "../assets/background.jpg"
        anchors.fill: parent
    }
    Image {
        source: "../assets/title.png"
        x: 150
        y: 80
        scale: 1.5
    }

    ParticleSystem {
        anchors.fill: parent
        Emitter {
            width: parent.width
            emitRate: 3
            lifeSpan: 7000
            size: 40
            velocity: PointDirection {
                y: 160
                yVariation: 60
                xVariation: 40
            }
        }
        ImageParticle {
            anchors.fill: parent
            id: particles
            sprites: [
                Sprite {
                    source: "../assets/Dongman.png"
                    frameCount: 1
                    frameDuration: 1
                    to: {
                        a: 1
                        b: 1
                        c: 1
                        d: 1
                    }
                },
                Sprite {
                    name: "a"
                    source: "../assets/Dongman.png"
                    frameCount: 1
                    frameDuration: 10000
                },
                Sprite {
                    name: "b"
                    source: "../assets/Dongman.png"
                    frameCount: 1
                    frameDuration: 10000
                },
                Sprite {
                    name: "c"
                    source: "../assets/Dongman.png"
                    frameCount: 1
                    frameDuration: 10000
                },
                Sprite {
                    name: "d"
                    source: "../assets/Dongman.png"
                    frameCount: 1
                    frameDuration: 10000
                }
            ]
            width: 100
            height: 100
            x: 20
            y: 20
            z: 4
        }
        Friction {
            anchors.fill: parent
            anchors.margins: -200
            factor: 0.3
        }
    }
    ParticleSystem {
        anchors.fill: parent

        ImageParticle {
            groups: ["C"]
            anchors.fill: parent
            source: "../assets/jiemianfeiji.png"
        }

        Emitter {
            group: "C"
            y: 350
            emitRate: 2
            lifeSpan: 4200
            size: 40
            sizeVariation: 15
            velocity: PointDirection {
                y: 40
                x: 80
                xVariation: 12
            }
            acceleration: PointDirection {
                y: 8
                x: 20
            }
            width: 80
            height: 80
        }
        Affector {
            groups: ["C"]
            x: 120
            y: 350
            width: 80
            height: 120
            once: true
            relative: false
            acceleration: PointDirection {
                y: -90
            }
        }
    }
    //    Image {
    //        anchors.fill: parent.gameWindowAnchorItem
    //        source: "../assets/BG.png"
    //    }
    Row {
        y: 600
        spacing: 200

        Item {
            id: help
            width: 60
            height: 60
            Image {
                anchors.fill: parent
                source: "../assets/help.png"
                scale: 1
            }
            MouseArea {
                id: helpp
                anchors.fill: help
                onClicked: {
                    help1Pressed()
                }
            }
        }
        Item {
            id: startbutton
            width: 150
            height: 80
            Image {

                source: "../assets/start.png"
                scale: 0.8
                anchors.fill: parent
            }
            MouseArea {
                id: mouseArea
                anchors.fill: startbutton
                onClicked: {
                    gameChoiceScenePressed()
                }
            }
        }

        Item {
            id: setting
            width: 50
            height: 50

            Image {
                source: "../assets/setting.png"
                anchors.fill: parent
                scale: 1
            }
            MouseArea {
                id: set
                anchors.fill: setting
                onClicked: settingPressed()
            }
        }
    }
    //    Image {
    //        id: a
    //        width: 60
    //        height: 80
    //        source: "../assets/tuzi.png"
    //        scale: 0.5
    //    }

    //    MouseArea {
    //        anchors.fill: parent
    //        hoverEnabled: true
    //        cursorShape: Qt.BlankCursor
    //        onPositionChanged: {
    //            a.x = mouseX - 30
    //            a.y = mouseY - a.height + 50
    //        }
    //    }
}
