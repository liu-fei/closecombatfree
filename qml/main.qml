import QtQuick 1.1
//import "qrc:/core/scenarios"
import "qrc:/core/menus"

Rectangle {
    id: root
    width: configWindowWidth
    height: configWindowHeight
    color: "#7e8c24"

//    Component.onCompleted: {
//        console.log("Configuration from config file:\n" + configurationString());
//    }

//    Scenario {
//        id: scenario
//        anchors.fill: parent
//        scenarioFile: "qrc:/scenarios/Scenario_tst1.qml"
//    }

    ScenarioMenu {
        id: scenarioMenu
        anchors.fill: parent
    }
}
