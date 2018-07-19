import QtQuick 2.0
import VPlay 2.0
import QtQuick.Particles 2.0

Scene {
    width: 500
    height: 500
    id: h1

    visible: false

    signal help2Pressed
    Image {
        source: "../assets/background.jpg"
        anchors.fill: parent
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
    Item {
        x: 40
        y: 40
        width: 200
        height: 200

        Image {
            source: "../assets/01.png"
            anchors.fill: parent
            scale: 0.8
        }
    }
    Item {
        x: 250
        y: 200
        width: 200
        height: 200
        Image {
            source: "../assets/airport01.png"
            anchors.fill: parent
        }
    }
    Item {
        id: jiantou
        x: 40
        y: 380
        width: 80
        height: 50

        Image {
            source: "../assets/Jiantou.png"
            anchors.fill: parent
        }
        MouseArea {
            id: helpp
            anchors.fill: jiantou
            onClicked: {
                help2Pressed()
            }
        }
    }
}
