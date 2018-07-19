import QtQuick 2.0
import VPlay 2.0
import network 1.0
import QtQuick.Controls 2.2

Scene {
    id:netScene
    width:700
    height:700
    visible:false

    signal gameScenePressed

    Image {
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/choice.jpg"
    }

    Row {
        x:netScene.width/3
        y:netScene.height/6
        spacing:90

        Button {
            id:createButton
            text:"Create Connect"
            onClicked:{
                address.visible=true
                playButton.visible=true
                mynetwork.openServer()
            }
        }

        Button {
            id:addButton
            text:"Add A Game"
            onClicked:{
                ipinput.visible=true
                connectButton1.visible=true
                connectButton2.visible=true
                connectButton3.visible=true
                playButton.visible=true
            }
        }
    }

    Text {
        id:address
        visible:false
        x:netScene.width/3
        y:netScene.height/3
        text:"ip:"+mynetwork.getLocalIP()
    }

    Button {
        id:playButton
        text:"Play Game"
        visible:false
        x:netScene.width/3
        y:netScene.height/3+90
        onClicked:{
            gameScenePressed()
        }
    }

    TextField {
        id:ipinput
        x:netScene.width/3+180
        y:netScene.height/3
        visible:false
    }

    Button {
        id:connectButton1
        text:"connect1"
        x:netScene.width/3+180
        y:netScene.height/3+90
        visible:false
        onClicked:{
            mynetwork.openClient1(ipinput.text)
        }
    }
    Button {
        id:connectButton2
        text:"connect2"
        x:netScene.width/3+180
        y:netScene.height/3+180
        visible:false
        onClicked:{
            mynetwork.openClient2(ipinput.text)
        }
    }
    Button {
        id:connectButton3
        text:"connect3"
        x:netScene.width/3+180
        y:netScene.height/3+270
        visible:false
        onClicked:{
            mynetwork.openClient3(ipinput.text)
        }
    }

}
