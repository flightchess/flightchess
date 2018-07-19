import QtQuick 2.0
import VPlay 2.0
import QtQuick 2.7
import QtQml 2.2

EntityBase {
    id: control
    entityType: "SoloControl"

    function move(Plane){
        if (Plane.state === "Airport"){
            if(random1.number === 6){
                Plane.state = "OnTheWay"
                Plane.i = 0;
                Plane.x = Plane.index[0].x
                Plane.y = Plane.index[0].y
            }
        } else if (Plane.state === "OnTheWay") {
            Plane.x = Plane.index[Plane.i + random1.number].x
            Plane.y = Plane.index[Plane.i + random1.number].y
            Plane.i += random1.number
            //飞棋
            if (Plane.x === Plane.index[17].x && Plane.y === Plane.index[17].y){
                Plane.x = Plane.index[29].x
                Plane.y = Plane.index[29].y
                Plane.i += 12

            }
            //检测终点
            else if (Plane.i + random1.number > 56) {
                Plane.x = Plane.index[112 - Plane.i - random1.number].x
                Plane.y = Plane.index[112 - Plane.i - random1.number].y
            }
            //到终点
            else if (Plane.i + random1.number === 56) {

                Plane.x = gameScene.width / 15 * 7 - gameScene.width / 18
                Plane.y = gameScene.width / 15 * 8
                Plane.state = "Landing"
                control.time = 6
                count.start()
            }

        }
        //跳棋
        else if(Plane.i%4 === 1){
            if(Plane.jumped === false){
                Plane.x = Plane.index[Plane.i+4].x
                Plane.y = Plane.index[Plane.i+4].y
                Plane.i += 4
            }
            if(random1.number !== 6)Plane.jumped = !Plane.jumped
        }

    }

    Play {
        id: random1
        x: gameScene.width/15*5+gameScene.width/70
        y: gameScene.width/15*3
        property int different:0

        Text {
            id: mytext
            anchors.centerIn:parent
            text: random1.number.toString()
        }
        MouseArea {
            anchors.fill: random1
            onClicked: {
                while(random1.different === random1.number){
                    random1.different = utils.generateRandomValueBetween(1, 7)
                }
                random1.number = random1.different
                mytext.text = random1.number.toString()
            }
        }
    }

    Plane {
        id: blue1
        initx: gameScene.width/15*1
        inity: gameScene.width/15*1
        state: "Airport"
        type:"blue"
        enabled:true
        Image {source: "../assets/fly4.png"}
        MouseArea {
            anchors.fill: blue1
            onClicked: {
                blue1.a()
                control.move(blue1)
            }}}
    Plane {
        id: blue2
        initx: gameScene.width/15*2
        inity: gameScene.width/15*1
        state: "Airport"
        type:"blue"
        enabled:true
        Image {source: "../assets/fly_blue2.png"}
        MouseArea {
            anchors.fill: blue2
            onClicked: {
                blue2.a()
                control.move(blue2)
            }}}

    Plane {
        id: blue3
        initx: gameScene.width/15*1
        inity: gameScene.width/15*2
        state: "Airport"
        type:"blue"
        enabled:true
        Image {source: "../assets/fly_blue3.png"}
        MouseArea {
            anchors.fill: blue3
            onClicked: {
                blue3.a()
                control.move(blue3)
            }}}


    Plane {
        id: blue4
        initx: gameScene.width/15*2
        inity: gameScene.width/15*2
        state: "Airport"
        type:"blue"
        enabled:true
        Image {source: "../assets/fly_blue4.png"}
        MouseArea {
            anchors.fill: blue4
            onClicked: {
                blue4.a()
                control.move(blue4)
            }}}
}
