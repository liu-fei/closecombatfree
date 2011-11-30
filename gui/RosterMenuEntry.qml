import QtQuick 1.1
import "../base/engineLogicHelpers.js" as Logic

Rectangle {
    property string entryText: ""
    property string entryStatusText: ""
    property color entryStatusColor: "#000000"
    property string entryLogo: ""
    property int index: 0

    id: root
    color: "#5e6c24"
    border.color: "#1e1c00"
    border.width: 1
    width: 175
    height: 54

    Image {
        id: logo
        height: 50
        width: 50
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 2
        anchors.topMargin: 2
        source: entryLogo
    }

    Text {
        id: entryDescription
        height: 25
        width: 75
        anchors.left: logo.right
        anchors.top: parent.top
        anchors.right: parent.right
        color: "#000000"
        text: entryText
        font.pointSize: 9
        font.bold: true
        font.family: "Ubuntu Condensed"
        verticalAlignment: Text.Top
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        id: entryStatus
        height: 25
        width: 75
        anchors.left: logo.right
        anchors.top: entryDescription.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: entryStatusColor
        text: entryStatusText
        font.pointSize: 14
        style: Text.Raised
        font.bold: true
        font.family: "Ubuntu Condensed"
        verticalAlignment: Text.Top
        horizontalAlignment: Text.AlignHCenter
    }

    MouseArea {
        id: moveFastMouseArea
        anchors.fill: parent
        hoverEnabled: true

        onEntered: parent.color = "#2e3c24";
        onExited: parent.color = "#5e6c24";
    }

    function changeStatus(newStatusMessage) {
        entryStatusText = newStatusMessage;

        var newColor = Logic.colorForStatus(newStatusMessage);
        if (newColor != "ERROR")
            entryStatusColor = newColor;
        else
            console.log("Error while changing status message color!");
    }

    function selectionChanged(state) {
        if (state == true) {
            root.border.color = "#eeee11";;
        } else if (state == false) {
            root.border.color = "#1e1c00";
        }
    }
}
