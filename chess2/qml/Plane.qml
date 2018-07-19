import QtQuick 2.0
import VPlay 2.0

EntityBase {
    id: airplaneA
    entityType: "Plane"
    width: gameScene.width / 15
    height: gameScene.width / 15

    property int initx
    property int inity
    property int i:0
    property string type
    property bool jumped:false
    property var index: []

    function a() {
        index[0] = {
            x: gameScene.width / 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[1] = {
            x: gameScene.width / 15 * 2 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[2] = {
            x: gameScene.width / 15 * 3 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[3] = {
            x: gameScene.width / 15 * 4 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[4] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 3
        }
        index[5] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 2
        }
        index[6] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 1
        }
        index[7] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[8] = {
            x: gameScene.width / 15 * 6 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[9] = {
            x: gameScene.width / 15 * 7 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[10] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[11] = {
            x: gameScene.width / 15 * 9 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[12] = {
            x: gameScene.width / 15 * 10 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[13] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[14] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 1
        }
        index[15] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 2
        }
        index[16] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 3
        }
        index[17] = {
            x: gameScene.width / 15 * 12 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[18] = {
            x: gameScene.width / 15 * 13 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[19] = {
            x: gameScene.width / 15 * 14 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[20] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[21] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 5
        }
        index[22] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 6
        }
        index[23] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[24] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 8
        }
        index[25] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 9
        }
        index[26] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[27] = {
            x: gameScene.width / 15 * 14 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[28] = {
            x: gameScene.width / 15 * 13 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[29] = {
            x: gameScene.width / 15 * 12 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[30] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 11
        }
        index[31] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 12
        }
        index[32] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 13
        }
        index[33] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[34] = {
            x: gameScene.width / 15 * 10 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[35] = {
            x: gameScene.width / 15 * 9 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[36] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[37] = {
            x: gameScene.width / 15 * 7 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[38] = {
            x: gameScene.width / 15 * 6 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[39] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[40] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 13
        }
        index[41] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 12
        }
        index[42] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 11
        }
        index[43] = {
            x: gameScene.width / 15 * 4 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[44] = {
            x: gameScene.width / 15 * 3 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[45] = {
            x: gameScene.width / 15 * 2 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[46] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[47] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 9
        }
        index[48] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 8
        }
        index[49] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[50] = {
            x: gameScene.width / 15 * 2 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[51] = {
            x: gameScene.width / 15 * 3 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[52] = {
            x: gameScene.width / 15 * 4 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[53] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[54] = {
            x: gameScene.width / 15 * 6 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[55] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
    }

    function b(){
        index[0] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*0}
        index[1] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*1}
        index[2] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*2}
        index[3] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*3}
        index[4] = {x:gameScene.width/15*12-gameScene.width/18,y:gameScene.width/15*4}
        index[5] = {x:gameScene.width/15*13-gameScene.width/18,y:gameScene.width/15*4}
        index[6] = {x:gameScene.width/15*14-gameScene.width/18,y:gameScene.width/15*4}
        index[7] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*4}
        index[8] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*5}
        index[9] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*6}
        index[10] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*7}
        index[11] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*8}
        index[12] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*9}
        index[13] = {x:gameScene.width/15*15-gameScene.width/18,y:gameScene.width/15*10}
        index[14] = {x:gameScene.width/15*14-gameScene.width/18,y:gameScene.width/15*10}
        index[15] = {x:gameScene.width/15*13-gameScene.width/18,y:gameScene.width/15*10}
        index[16] = {x:gameScene.width/15*12-gameScene.width/18,y:gameScene.width/15*10}
        index[17] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*11}
        index[18] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*12}
        index[19] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*13}
        index[20] = {x:gameScene.width/15*11-gameScene.width/18,y:gameScene.width/15*14}
        index[21] = {x:gameScene.width/15*10-gameScene.width/18,y:gameScene.width/15*14}
        index[22] = {x:gameScene.width/15*9-gameScene.width/18,y:gameScene.width/15*14}
        index[23] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*14}
        index[24] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*14}
        index[25] = {x:gameScene.width/15*7-gameScene.width/18,y:gameScene.width/15*14}
        index[26] = {x:gameScene.width/15*6-gameScene.width/18,y:gameScene.width/15*14}
        index[27] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*14}
        index[28] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*13}
        index[29] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*12}
        index[30] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*11}
        index[31] = {x:gameScene.width/15*4-gameScene.width/18,y:gameScene.width/15*10}
        index[32] = {x:gameScene.width/15*3-gameScene.width/18,y:gameScene.width/15*10}
        index[33] = {x:gameScene.width/15*2-gameScene.width/18,y:gameScene.width/15*10}
        index[34] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*10}
        index[35] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*9}
        index[36] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*8}
        index[37] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*7}
        index[38] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*6}
        index[39] = {x:gameScene.width/15*1-gameScene.width/18,y:gameScene.width/15*5}
        index[40] = {x:gameScene.width/15-gameScene.width/18,y:gameScene.width/15*4}
        index[41] = {x:gameScene.width/15*2-gameScene.width/18,y:gameScene.width/15*4}
        index[42] = {x:gameScene.width/15*3-gameScene.width/18,y:gameScene.width/15*4}
        index[43] = {x:gameScene.width/15*4-gameScene.width/18,y:gameScene.width/15*4}
        index[44] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*3}
        index[45] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*2}
        index[46] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*1}
        index[47] = {x:gameScene.width/15*5-gameScene.width/18,y:gameScene.width/15*0}
        index[48] = {x:gameScene.width/15*6-gameScene.width/18,y:gameScene.width/15*0}
        index[49] = {x:gameScene.width/15*7-gameScene.width/18,y:gameScene.width/15*0}
        index[50] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*0}
        index[51] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*1}
        index[52] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*2}
        index[53] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*3}
        index[54] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*4}
        index[55] = {x:gameScene.width/15*8-gameScene.width/18,y:gameScene.width/15*5}
    }

    function c(){
        index[0] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*14}
        index[1] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*13}
        index[2] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*12}
        index[3] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*11}
        index[4] = {x:gameScene.width/15*4- gameScene.width/18,y:gameScene.width/15*10}
        index[5] = {x:gameScene.width/15*3- gameScene.width/18,y:gameScene.width/15*10}
        index[6] = {x:gameScene.width/15*2- gameScene.width/18,y:gameScene.width/15*10}
        index[7] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*10}
        index[8] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*9}
        index[9] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*8}
        index[10] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*7}
        index[11] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*6}
        index[12] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*5}
        index[13] = {x:gameScene.width/15*1- gameScene.width/18,y:gameScene.width/15*4}
        index[14] = {x:gameScene.width/15*2- gameScene.width/18,y:gameScene.width/15*4}
        index[15] = {x:gameScene.width/15*3- gameScene.width/18,y:gameScene.width/15*4}
        index[16] = {x:gameScene.width/15*4- gameScene.width/18,y:gameScene.width/15*4}
        index[17] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*3}
        index[18] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*2}
        index[19] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*1}
        index[20] = {x:gameScene.width/15*5- gameScene.width/18,y:gameScene.width/15*0}
        index[21] = {x:gameScene.width/15*6- gameScene.width/18,y:gameScene.width/15*0}
        index[22] = {x:gameScene.width/15*7- gameScene.width/18,y:gameScene.width/15*0}
        index[23] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*0}
        index[24] = {x:gameScene.width/15*9- gameScene.width/18,y:gameScene.width/15*0}
        index[25] = {x:gameScene.width/15*10- gameScene.width/18,y:gameScene.width/15*0}
        index[26] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*0}
        index[27] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*1}index[28] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*2}index[29] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*3}
        index[30] = {x:gameScene.width/15*12- gameScene.width/18,y:gameScene.width/15*4}
        index[31] = {x:gameScene.width/15*13- gameScene.width/18,y:gameScene.width/15*4}index[32] = {x:gameScene.width/15*14- gameScene.width/18,y:gameScene.width/15*4}
        index[33] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*4}
        index[34] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*5}
        index[35] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*6}
        index[36] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*7}
        index[37] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*8}
        index[38] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*9}
        index[39] = {x:gameScene.width/15*15- gameScene.width/18,y:gameScene.width/15*10}
        index[40] = {x:gameScene.width/15*14- gameScene.width/18,y:gameScene.width/15*10}
        index[41] = {x:gameScene.width/15*13- gameScene.width/18,y:gameScene.width/15*10}
        index[42] = {x:gameScene.width/15*12- gameScene.width/18,y:gameScene.width/15*10}
        index[43] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*11}
        index[44] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*12}
        index[45] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*13}
        index[46] = {x:gameScene.width/15*11- gameScene.width/18,y:gameScene.width/15*14}
        index[47] = {x:gameScene.width/15*10- gameScene.width/18,y:gameScene.width/15*14}
        index[48] = {x:gameScene.width/15*9- gameScene.width/18,y:gameScene.width/15*14}
        index[49] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*14}
        index[50] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*13}
        index[51] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*12}
        index[52] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*11}
        index[53] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*10}
        index[54] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*9}
        index[55] = {x:gameScene.width/15*8- gameScene.width/18,y:gameScene.width/15*7}
    }

    function d() {
        index[0] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 15,
            y: gameScene.width / 15 * 10
        }
        index[1] = {
            x: gameScene.width / 15 * 14 - gameScene.width / 15,
            y: gameScene.width / 15 * 10
        }
        index[2] = {
            x: gameScene.width / 15 * 13 - gameScene.width / 15,
            y: gameScene.width / 15 * 10
        }
        index[3] = {
            x: gameScene.width / 15 * 12 - gameScene.width / 15,
            y: gameScene.width / 15 * 10
        }
        index[4] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 15,
            y: gameScene.width / 15 * 11
        }
        index[5] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 12
        }
        index[6] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 13
        }
        index[7] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[8] = {
            x: gameScene.width / 15 * 10 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[9] = {
            x: gameScene.width / 15 * 9 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[10] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[11] = {
            x: gameScene.width / 15 * 7 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[12] = {
            x: gameScene.width / 15 * 6 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[13] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 14
        }
        index[14] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 13
        }
        index[15] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 12
        }
        index[16] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 11
        }
        index[17] = {
            x: gameScene.width / 15 * 4 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[18] = {
            x: gameScene.width / 15 * 3 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[19] = {
            x: gameScene.width / 15 * 2 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[20] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 10
        }
        index[21] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 9
        }
        index[22] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 8
        }
        index[23] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[24] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 6
        }
        index[25] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 5
        }
        index[26] = {
            x: gameScene.width / 15 * 1 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[27] = {
            x: gameScene.width / 15 * 2 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[28] = {
            x: gameScene.width / 15 * 3 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[29] = {
            x: gameScene.width / 15 * 4 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[30] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 3
        }
        index[31] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 2
        }
        index[32] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 1
        }
        index[33] = {
            x: gameScene.width / 15 * 5 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[34] = {
            x: gameScene.width / 15 * 6 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[35] = {
            x: gameScene.width / 15 * 7 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[36] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[37] = {
            x: gameScene.width / 15 * 9 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[38] = {
            x: gameScene.width / 15 * 10 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[39] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 0
        }
        index[40] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 1
        }
        index[41] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 2
        }
        index[42] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 3
        }
        index[43] = {
            x: gameScene.width / 15 * 12 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[44] = {
            x: gameScene.width / 15 * 13 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[45] = {
            x: gameScene.width / 15 * 14 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[46] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 4
        }
        index[47] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 5
        }
        index[48] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 6
        }
        index[49] = {
            x: gameScene.width / 15 * 15 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[50] = {
            x: gameScene.width / 15 * 14 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[51] = {
            x: gameScene.width / 15 * 13 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[52] = {
            x: gameScene.width / 15 * 12 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[53] = {
            x: gameScene.width / 15 * 11 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[54] = {
            x: gameScene.width / 15 * 10 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
        index[55] = {
            x: gameScene.width / 15 * 8 - gameScene.width / 18,
            y: gameScene.width / 15 * 7
        }
    }

    states: [
        State {
            name: "Airport"
            PropertyChanges {
                target: airplaneA
                x: initx;
                y: inity
            }
        },
        State {
            name: "OnTheWay"

        },
        State {
            name: "Landing"
        }
    ]


}
