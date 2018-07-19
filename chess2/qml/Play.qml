import QtQuick 2.0
import VPlay 2.0
import QtQuick.Controls 2.2

EntityBase {
    width:gameScene.width/18
    height:gameScene.width/18
    property int number:0
    Rectangle{
        width:parent.width
        height:parent.height
        smooth:true
        radius:5
        color:"white"
    }
}
