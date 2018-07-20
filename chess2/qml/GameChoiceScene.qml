import QtQuick 2.0
import VPlay 2.0
import QtQuick.Controls 2.2

//选择几人模式的界面
//董梦丹
Scene {
    id:gameChoiceScene
    width:gameScene.width
    height:gameScene.width
    visible:false
    signal gameScenePressed
    signal netScenePressed
    signal soloGameScenePressed

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
                netScenePressed()

            }
        }

        Button {
            id:netButton
            text:"Four people"
            onClicked:{
                gameScenePressed()
            }
        }
    }
}
