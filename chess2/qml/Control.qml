import QtQuick 2.0
import VPlay 2.0
import QtQuick 2.7
import QtQml 2.2

EntityBase {
    id: control
    entityType: "Control"
    property int the_mapnumber:0
    property int the_indexnumber:0
    property int time:6
    property int blue_landing:0
    property int red_landing:0
    property int green_landing:0
    property int yellow_landing:0

    property var chessmap: []

    Image {
        id:achieve
        source:"../assets/achieve.png"
        scale:0.7
        visible:false
    }

    Timer {
        id:count
        repeat:true
        triggeredOnStart:true
        onTriggered:{
            achieve.visible=true
            control.time -= 1
            if(control.time < 0){
                count.stop()
                achieve.visible = false
            }
        }

    }

    Text {
        id:bluetext
        text:blue_landing.toString()
        color:"white"
        font.pixelSize:15
        x:gameScene.width/15*5+gameScene.width/70
        y:gameScene.width/15*2
    }

    Text {
        id:redtext
        text:red_landing.toString()
        color:"white"
        font.pixelSize:15
        x:gameScene.width/15*9
        y:gameScene.width/15*2
    }

    Text {
        id:greentext
        text:green_landing.toString()
        color:"white"
        font.pixelSize:15
        x:gameScene.width/15*5+gameScene.width/70
        y:gameScene.width/15*10
    }

    Text {
        id:yellowtext
        text:yellow_landing.toString()
        color:"white"
        font.pixelSize:15
        x:gameScene.width/15*9
        y:gameScene.width/15*10
    }

    function add(){
        chessmap[0]=blue1
        chessmap[1]=blue2
        chessmap[2]=blue3
        chessmap[3]=blue4
        chessmap[4]=red1
        chessmap[5]=red2
        chessmap[6]=red3
        chessmap[7]=red4
        chessmap[8]=green1
        chessmap[9]=green2
        chessmap[10]=green3
        chessmap[11]=green4
        chessmap[12]=yellow1
        chessmap[13]=yellow2
        chessmap[14]=yellow3
        chessmap[15]=yellow4
    }

    function move(Plane){
        //        chessmap[chessmap.length]=Plane
        control.add()
        if (Plane.state === "Airport"){
            if(random1.number === 6){
                Plane.state = "OnTheWay"
                Plane.i = 0;
                Plane.x = Plane.index[0].x
                Plane.y = Plane.index[0].y
//                mynetwork.getChessChange(Plane.index[0].x,Plane.index[0].y)
            }else if(random1.number !== 6){
                for(the_mapnumber=0;the_mapnumber!=chessmap.length;the_mapnumber++){
                    if(Plane.type === "blue"){
                        if(chessmap[the_mapnumber].type === "blue"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "red"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*9
                        random1.y=gameScene.width/15*3
                    }
                    if(Plane.type === "red"){
                        if(chessmap[the_mapnumber].type === "red"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "green"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*5+gameScene.width/70
                        random1.y=gameScene.width/15*11
                    }
                    if(Plane.type === "green"){
                        if(chessmap[the_mapnumber].type === "green"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "yellow"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*9
                        random1.y=gameScene.width/15*11
                    }
                    if(Plane.type === "yellow"){
                        if(chessmap[the_mapnumber].type === "yellow"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "blue"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*5+gameScene.width/70
                        random1.y=gameScene.width/15*3
                    }
                }

            }
        } else if (Plane.state === "OnTheWay") {
            Plane.x = Plane.index[Plane.i + random1.number].x
            Plane.y = Plane.index[Plane.i + random1.number].y
            Plane.i += random1.number
            //collision
            for(the_indexnumber=Plane.i;the_indexnumber!=(Plane.i-random1.number);
                the_indexnumber--){
                for(the_mapnumber=0;the_mapnumber!=chessmap.length;the_mapnumber++){
                    if(chessmap[the_mapnumber].x === Plane.index[the_indexnumber].x &&
                            chessmap[the_mapnumber].y === Plane.index[the_indexnumber].y &&
                            chessmap[the_mapnumber]!== Plane &&
                            chessmap[the_mapnumber].type !== Plane.type)
                    {
                        //                        chessmap[the_mapnumber].x = chessmap[the_mapnumber].initx
                        //                        chessmap[the_mapnumber].y = chessmap[the_mapnumber].inity
                        chessmap[the_mapnumber].i = 0
                        chessmap[the_mapnumber].state = "Airport"
                    }
                }
            }
            //飞棋
            if (Plane.x === Plane.index[17].x && Plane.y === Plane.index[17].y){
                Plane.x = Plane.index[29].x
                Plane.y = Plane.index[29].y
                Plane.i += 12
                for(the_mapnumber=0;the_mapnumber!=chessmap.length;the_mapnumber++)
                {
                    if(Plane.type === "blue"){
                        if(chessmap[the_mapnumber].type === "yellow"){
                            if(chessmap[the_mapnumber].x === gameScene.width/15*14- gameScene.width / 18 && chessmap[the_mapnumber].y === gameScene.width/15*7){
                                //                                chessmap[the_mapnumber].x = chessmap[the_mapnumber].initx
                                //                                chessmap[the_mapnumber].y = chessmap[the_mapnumber].inity
                                chessmap[the_mapnumber].i = 0
                                chessmap[the_mapnumber].state = "Airport"
                            }
                        }
                    }
                    if(Plane.type === "red"){
                        if(chessmap[the_mapnumber].type === "green"){
                            if(chessmap[the_mapnumber].x === gameScene.width/15*8- gameScene.width / 18 && chessmap[the_mapnumber].y === gameScene.width/15*11){
                                //                                chessmap[the_mapnumber].x = chessmap[the_mapnumber].initx
                                //                                chessmap[the_mapnumber].y = chessmap[the_mapnumber].inity
                                chessmap[the_mapnumber].i = 0
                                chessmap[the_mapnumber].state = "Airport"
                            }
                        }
                    }
                    if(Plane.type === "green"){
                        if(chessmap[the_mapnumber].type === "red"){
                            if(chessmap[the_mapnumber].x === gameScene.width/15*8- gameScene.width / 18 && chessmap[the_mapnumber].y === gameScene.width/15*3){
                                //                                chessmap[the_mapnumber].x = chessmap[the_mapnumber].initx
                                //                                chessmap[the_mapnumber].y = chessmap[the_mapnumber].inity
                                chessmap[the_mapnumber].i = 0
                                chessmap[the_mapnumber].state = "Airport"
                            }
                        }
                    }
                    if(Plane.type === "yellow"){
                        if(chessmap[the_mapnumber].type === "blue"){
                            if(chessmap[the_mapnumber].x === gameScene.width/15*4- gameScene.width / 18 && chessmap[the_mapnumber].y === gameScene.width/15*7){
                                //                                chessmap[the_mapnumber].x = chessmap[the_mapnumber].initx
                                //                                chessmap[the_mapnumber].y = chessmap[the_mapnumber].inity
                                chessmap[the_mapnumber].i = 0
                                chessmap[the_mapnumber].state = "Airport"
                            }
                        }
                    }
                }
            }
            //检测终点
            else if (Plane.i + random1.number > 56) {
                Plane.x = Plane.index[112 - Plane.i - random1.number].x
                Plane.y = Plane.index[112 - Plane.i - random1.number].y
            }
            //到终点
            else if (Plane.i + random1.number === 56) {
                if(Plane.type === "blue"){
                    Plane.x = gameScene.width / 15 * 7 - gameScene.width / 18
                    Plane.y = gameScene.width / 15 * 8
                    Plane.state = "Landing"
                    control.time = 6
                    count.start()
                    blue_landing += 1
                    if(blue_landing === 4){
                        bluetext.text="全部成功抵达"
                    }

                }
                if(Plane.type === "red"){
                    Plane.x = gameScene.width / 15 * 7 - gameScene.width / 18
                    Plane.y = gameScene.width / 15 * 6
                    Plane.state = "Landing"
                    control.time = 6
                    count.start()
                    red_landing += 1
                    if(red_landing === 4){
                        redtext.text="全部成功抵达"
                    }
                }
                if(Plane.type === "green"){
                    Plane.x = gameScene.width / 15 * 9 - gameScene.width / 18
                    Plane.y = gameScene.width / 15 * 6
                    Plane.state = "Landing"
                    control.time = 6
                    count.start()
                    green_landing += 1
                    if(green_landing === 4){
                        greentext.text="全部成功抵达"
                    }
                }
                if(Plane.type === "yellow"){
                    Plane.x = gameScene.width / 15 * 9 - gameScene.width / 18
                    Plane.y = gameScene.width / 15 * 8
                    Plane.state = "Landing"
                    control.time = 6
                    count.start()
                    yellow_landing += 1
                    if(yellow_landing === 4){
                        yellowtext.text="全部成功抵达"
                    }
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
            //限制不同飞机
            if(random1.number !== 6){
                for(the_mapnumber=0;the_mapnumber!=chessmap.length;the_mapnumber++){
                    if(Plane.type === "blue"){
                        if(chessmap[the_mapnumber].type === "blue"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "red"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*9
                        random1.y=gameScene.width/15*3
                    }
                    if(Plane.type === "red"){
                        if(chessmap[the_mapnumber].type === "red"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "green"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*5+gameScene.width/70
                        random1.y=gameScene.width/15*11
                    }
                    if(Plane.type === "green"){
                        if(chessmap[the_mapnumber].type === "green"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "yellow"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*9
                        random1.y=gameScene.width/15*11
                    }
                    if(Plane.type === "yellow"){
                        if(chessmap[the_mapnumber].type === "yellow"){
                            chessmap[the_mapnumber].enabled=false
                        }
                        if(chessmap[the_mapnumber].type === "blue"){
                            chessmap[the_mapnumber].enabled=true
                        }
                        random1.x=gameScene.width/15*5+gameScene.width/70
                        random1.y=gameScene.width/15*3
                    }
                }

            }
//            mynetwork.getChessChange(Plane.x, Plane.y)
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

    Plane {
        id: red1
        initx: gameScene.width/15*13
        inity: gameScene.width/15*1
        state: "Airport"
        type:"red"
        enabled:false
        Image {source: "../assets/fly2.png"}
        MouseArea {
            anchors.fill: red1
            onClicked: {
                red1.b()
                control.move(red1)
            }}}

    Plane {
        id: red2
        initx: gameScene.width/15*14
        inity: gameScene.width/15*1
        state: "Airport"
        type:"red"
        enabled:false
        Image {source: "../assets/fly_red1.png"}
        MouseArea {
            anchors.fill: red2
            onClicked: {
                red2.b()
                control.move(red2)
            }}}

    Plane {
        id: red3
        initx: gameScene.width/15*13
        inity: gameScene.width/15*2
        state: "Airport"
        type:"red"
        enabled:false
        Image {
            source: "../assets/fly_red2.png"
        }
        MouseArea {
            anchors.fill: red3
            onClicked: {
                red3.b()
                control.move(red3)
            }}}
    Plane {
        id: red4
        initx: gameScene.width/15*14
        inity: gameScene.width/15*2
        state: "Airport"
        type:"red"
        enabled:false
        Image {
            source: "../assets/fly_red3.png"
        }
        MouseArea {
            anchors.fill: red4
            onClicked: {
                red4.b()
                control.move(red4)
            }}}
    Plane {
        id: green1
        initx: gameScene.width/15*1
        inity: gameScene.width/15*12
        state: "Airport"
        type:"green"
        enabled:false
        Image {
            source: "../assets/fly3.png"
        }
        MouseArea {
            anchors.fill: green1
            onClicked: {
                green1.c()
                control.move(green1)
            }}}
    Plane {
        id: green2
        initx: gameScene.width/15*2
        inity: gameScene.width/15*12
        state: "Airport"
        type:"green"
        enabled:false
        Image {
            source: "../assets/fly_green2.png"
        }
        MouseArea {
            anchors.fill: green2
            onClicked: {
                green2.c()
                control.move(green2)
            }}}
    Plane {
        id: green3
        initx: gameScene.width/15*1
        inity: gameScene.width/15*13
        state: "Airport"
        type:"green"
        enabled:false
        Image {
            source: "../assets/fly_green3.png"
        }
        MouseArea {
            anchors.fill: green3
            onClicked: {
                green3.c()
                control.move(green3)
            }}}
    Plane {
        id: green4
        initx: gameScene.width/15*2
        inity: gameScene.width/15*13
        state: "Airport"
        type:"green"
        enabled:false
        Image {
            source: "../assets/fly_green4.png"
        }
        MouseArea {
            anchors.fill: green4
            onClicked: {
                green4.c()
                control.move(green4)
            }}}

    Plane {
        id: yellow1
        initx: gameScene.width/15*12
        inity: gameScene.width/15*13
        state: "Airport"
        type:"yellow"
        enabled:false
        Image {
            source: "../assets/fly_yellow1.png"
        }
        MouseArea {
            anchors.fill: yellow1
            onClicked: {
                yellow1.d()
                control.move(yellow1)
            }}}
    Plane {
        id: yellow2
        initx: gameScene.width/15*13
        inity: gameScene.width/15*13
        state: "Airport"
        type:"yellow"
        enabled:false
        Image {
            source: "../assets/fly_yellow2.png"
        }
        MouseArea {
            anchors.fill: yellow2
            onClicked: {
                yellow2.d()
                control.move(yellow2)
            }}}
    Plane {
        id: yellow3
        initx: gameScene.width/15*12
        inity: gameScene.width/15*14
        state: "Airport"
        type:"yellow"
        enabled:false
        Image {
            source: "../assets/fly_yellow3.png"
        }
        MouseArea {
            anchors.fill: yellow3
            onClicked: {
                yellow3.d()
                control.move(yellow3)
            }}}
    Plane {
        id: yellow4
        initx: gameScene.width/15*13
        inity: gameScene.width/15*14
        state: "Airport"
        type:"yellow"
        enabled:false
        Image {
            source: "../assets/fly1.png"
        }
        MouseArea {
            anchors.fill: yellow4
            onClicked: {
                yellow4.d()
                control.move(yellow4)
            }}}
}

