import QtQuick 2.0
import VPlay 2.0
import QtQuick.Controls 2.2

Scene {
    id:gameChoiceScene
    width:gameScene.width
    height:gameScene.width
    visible:false
    signal gameScenePressed
    signal netScenePressed
    signal soloGameScenePressed
    signal twoGameScenePressed
    Image {
        anchors.fill:gameWindowAnchorItem
        source:"../assets/choice.jpg"
    }
    Column {
        x:gameChoiceScene.width/2-gameChoiceScene.width/15
        y:gameChoiceScene.height/3
        spacing:90

        Button {
            id:soloButton
            text:"solo"
            onClicked:{
                soloGameScenePressed()
            }
        }

        Button {
            id:twoButton
            text:"1 v 1"
            onClicked:{
                twoGameScenePressed()
            }
        }

        Button {
            id:netButton
            text:"LAN connect"
            onClicked:{
                netScenePressed()
            }
        }
    }
}
