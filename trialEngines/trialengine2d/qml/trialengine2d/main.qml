import QtQuick 1.0
import QtWebKit 1.0

Rectangle {
    id: root
    width: 1000
    height: 800
    color: "lightgray"

    Text {
        id: textHello
        text: qsTr("Hello World")
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 4
    }
    Tank_tst1 {
        id: tank1
        x: parent.width - 150
        y: 100
    }
    Tank_tst1 {
        id: tank2
        x: parent.width - 300
        y: 100
    }
    Tank_tst1 {
        id: tank3
        x: parent.width - 450
        y: 100
        rotation: 180
    }
    Tank_tst1 {
        id: tank4
        x: parent.width - 600
        y: 100
        rotation: 0
//        turretBodyTexture: ""
    }

    MouseArea {
        id: mouseAreaMain
        anchors.fill: parent
        onClicked: {
//            console.log("Mouse: " + mouseAreaMain.mouseX + ", " + mouseAreaMain.mouseY)
            tank4.moveTo(mouseAreaMain.mouseX, mouseAreaMain.mouseY)

            if (root.state == "")
                root.state = "afterClick"
            else
                root.state = ""
        }
    }
    MouseArea {
        id: mouseAreaTank3
        anchors.fill: tank3
        onClicked: {
            tank3.moveTo(tank3.x, 300)
            tank3.turretRotation = 180
        }
    }

    states: [
        State {
            name: "afterClick"
            PropertyChanges {
                target: textHello
                color: "#730909"
                font.bold: true
                font.pointSize: 15
            }
            PropertyChanges {
                target: tank1
                y: 300
                turretRotation: 170
            }
            PropertyChanges {
                target: tank2
//                x: root.width - 500 // Does not work well, currently. Only one property at a time is fine.
                rotation: 90
            }
        }
    ]
}
