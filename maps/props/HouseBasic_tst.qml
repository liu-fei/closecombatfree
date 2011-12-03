import QtQuick 1.1

PropRectangle {
    objectName: "house"
    cover: "great"

    width: 140
    height: 100

    id: base
    color: "#999fa4"

    Rectangle {
        id: floor
        anchors.fill: parent
        anchors.margins: 5
        color: "#4f1708"
    }

    Image {
        id: roof
        visible: topVisible
        anchors.fill: parent
        source: PWD + "img/maps/props/HouseBasicRoof1.png"
    }
}