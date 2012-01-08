import QtQuick 1.1
import "../../../qml/units"
import "../../../qml/units/tanks"

Tank {
    id: root
    unitFileName: "Tank_tst2"
    unitType: "Test tank 2"
    unitLogo: "../../../img/units/tanks/generic/tank_tst2_logo.png"
    hullColor: "#505050"
    rotationSpeed: 40
    turretRotationSpeed: 35
    turretSize: 44
    maxSpeed: 50
    acceleration: 2
    unitWidth: 50
    unitHeight: 80

    Tank_tst1_hull {
        id: hull
    }

    Tank_tst2_turret {
        id: turret
    }

    soldiers: [
        Soldier {
            role: "Commander"
        },
        Soldier {
            role: "Gunner"
        },
        Soldier {
            role: "Loader"
        },
        Soldier {
            role: "Assistant"
        }
    ]
}
