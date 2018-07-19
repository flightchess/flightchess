import VPlay 2.0
import QtQuick 2.0
import network 1.0

GameWindow {
    id: gameWindow
    screenWidth: gameScene.width
    screenHeight: gameScene.height
    maximized:false

    state: "menu"
    states: [
        State {
            name: "menu"
            PropertyChanges {
                target: menuScene
                visible: true
            }
            PropertyChanges {
                target: gameWindow
                activeScene: menuScene
            }
        },
        State {
            name: "help1"
            PropertyChanges {
                target: h1
                visible: true
            }
        },
        State {
            name: "help2"
            PropertyChanges {
                target: h2
                visible: true
            }
        },
        State {
            name: "help3"
            PropertyChanges {
                target: h3
                visible: true
            }
        },
        State {
            name: "help4"
            PropertyChanges {
                target: h4
                visible: true
            }
        },
        State {
            name: "game"
            PropertyChanges {
                target: gameScene
                visible: true
            }
            PropertyChanges {
                target: gameWindow
                activeScene: gameScene
            }
        },
        State {
            name: "setting"
            PropertyChanges {
                target: settingScene
                visible: true
            }
            PropertyChanges {
                target: gameWindow
                activeScene: gameScene
            }
        },
        State {
            name:"choice"
            PropertyChanges {
                target:gameChoiceScene
                visible:true
            }
            PropertyChanges {
                target:gameWindow
                activeScene:gameChoiceScene
            }
        },
        State {
            name:"net"
            PropertyChanges {
                target:netScene
                visible:true
            }
            PropertyChanges {
                target:gameWindow
                activeScene:netScene
            }
        },
        State {
            name:"solo"
            PropertyChanges {
                target:sologameScene
                visible:true
            }
            PropertyChanges {
                target:gameWindow
                activeScene:sologameScene
            }
        },
        State {
            name:"two"
            PropertyChanges {
                target:doublegameScene
                visible:true
            }
            PropertyChanges {
                target:gameWindow
                activeScene:doublegameScene
            }
        }

    ]
    activeScene: gameScene

    MenuScene {
        id: menuScene
        onGameChoiceScenePressed: gameWindow.state = "choice"
        onHelp1Pressed: gameWindow.state = "help1"
        onSettingPressed: gameWindow.state = "setting"
    }

    GameScene {
        id: gameScene
        onMenuScenePressed: gameWindow.state = "menu"
    }

    Help1 {
        id: h1
        onHelp2Pressed: gameWindow.state = "help2"
    }
    Help2 {
        id: h2
        onHelp3Pressed: gameWindow.state = "help3"
    }
    Help3 {
        id: h3
        onHelp4Pressed: gameWindow.state = "help4"
    }
    Help4 {
        id: h4
        onMenuscenePressed: gameWindow.state = "menu"
    }

    SettingScene {
        id: settingScene
        onBackPressed: gameWindow.state = "menu"
    }

    GameChoiceScene {
        id: gameChoiceScene
        onGameScenePressed: gameWindow.state = "game"
        onNetScenePressed: gameWindow.state = "net"
        onSoloGameScenePressed: gameWindow.state = "solo"
        onTwoGameScenePressed: gameWindow.state = "two"
    }

    NetScene {
        id:netScene
        onGameScenePressed:gameWindow.state = "game"
    }

    NetWork {
        id:mynetwork
//        onSendInformation: {

//        }
    }

    SoloGameScene {
        id:sologameScene
    }

    TwoGameScene {
        id:doublegameScene
    }

    EntityManager {
        id: entityManager
        entityContainer: gameScene
    }
}
