import QtQuick 1.1

Item {
    property string backgroundImage: PWD + "img/maps/test2.jpg"
    property string terrainMap: "" // this may hold obstacles and terrain info. We'll see.

    id: root
    width: background.sourceSize.width
    height: background.sourceSize.height

    Image {
        id: background
        source: backgroundImage
        anchors.fill: parent
    }
}
