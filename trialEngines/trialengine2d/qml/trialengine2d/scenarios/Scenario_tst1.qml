import QtQuick 1.1
import "../tanks"

Item {
    property string mapFile: "../maps/Map_tst1.qml"

    id: root
    width: 800
    height: 800

    Tank_tst1 {
        objectName: "tank1"
        x: parent.width - 150
        y: 400
    }
    Tank_tst1 {
        objectName: "tank2"
        x: parent.width - 300
        y: 400
    }
    Tank_tst1 {
        objectName: "tank3"
        x: parent.width - 450
        y: 400
        rotation: 180
        hullColor: "#ffffff"
    }
    Tank_tst1 {
        objectName: "tank4"
        x: parent.width - 600
        y: 400
        rotation: 0
    }
    Tank_tst2 {
        objectName: "tank5"
        x: parent.width - 750
        y: 400
        rotation: 0
    }
}
