import QtQuick 1.1

Rectangle {
    property string text: "o"

    color: "#333232"
    width: 30
    height: 30
    radius: 5

    Text {
        color: "#adadad"
        text: parent.text
        anchors.verticalCenterOffset: -2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 25
        font.bold: true
    }
}
