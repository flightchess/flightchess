import QtQuick 2.0
import VPlay 2.0

Scene {
    id:sologameScene
    width: 700
    height: 700

    visible: false
    Image {
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/airport1.png"
    }

//    Row{
//        id:chooseplane
//        x:sologameScene.width/3-sologameScene.width/15
//        y:gameScene.width/3
//        spacing:70
//        Image {
//            id:bluefly
//            source:"../assets/fly4.png"
//        }
//        Image {
//            id:redfly
//            source:"../assets/fly2.png"
//        }
//        Image {
//            id:greenfly
//            source:"../assets/fly3.png"
//        }
//        Image {
//            id:yellowfly
//            source:"../assets/fly_yellow1.png"
//        }
//        MouseArea {
//            anchors.fill:
//            onClicked:{

//            }
//        }
//    }

    SoloControl {
        id:solocontrol
    }
}
