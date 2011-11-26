import QtQuick 1.1
import Qt.labs.particles 1.0
import "../"
import "../../gui"
import "../../engineLogicHelpers.js" as Logic
import "../engineActionLogic.js" as ActionLogic

Unit {
    // Tank properties.
    property int frontArmour: 100 // mm
    property int sideArmour: 80 // mm
    property int backArmour: 60 // mm
    property int turretArmour: 80 // mm - might evolve into {front, side, back} triplet, too

    // Additional properties, not important for non-developers/ modders.
    property int turretRotation: 0
    property int turretSize: 60
    property color hullColor: "#7b8259"

    onMoveTo: {
        exhaust.burst(20);
        exhaustLater.burst(40);
    }

    onTurretRotationChanged: turret.turretRotation = turretRotation;

    Component.onCompleted: {
        turret.turretSize = turretSize;
        hull.hullHeight = unitHeight;
        hull.hullWidth = unitWidth;
        hull.hullColor = hullColor;

        turret.x = centerX - turret.centerX;
        turret.y = centerY - turret.centerY;
    }

    signal fireTo (real targetX, real targetY)
    onFireTo: ActionLogic.turretFireTo(targetX, targetY);

    signal smokeTo (real targetX, real targetY)
    onSmokeTo: ActionLogic.turretSmokeTo(targetX, targetY);

    id: root
    unitType: "Generic tank"
    unitLogo: PWD + "img/units/generic_unit_logo.png"
    rotationSpeed: 1
    turretRotationSpeed: 1
    maxSpeed: 1
    acceleration: 1
    unitWidth: 1
    unitHeight: 1

    Behavior on turretRotation {
        SequentialAnimation {
            RotationAnimation {
                id: turretRotationAnimation
                duration: 3000
                direction: RotationAnimation.Shortest
                easing.type: Easing.InOutQuad
            }
            ScriptAction {
                script: {
                    if (firing == true) {
                        // Warning! This order is important for order markers!
                        turret.firing = true;
                        firing = false;
                        changeStatus("READY");
                        actionFinished(unitIndex, __tempX, __tempY);                        
                    } else if (smoking == true) {
                        // Warning! This order is important for order markers!
                        turret.smoking = true;
                        smoking = false;
                        changeStatus("READY");
                        actionFinished(unitIndex, __tempX, __tempY);                        
                    }
                }
            }
        }
    }

    Particles {
        id: exhaust

        width: 1; height: 1
        x: (2 * centerX) - 3
        y: (2 * centerY) - 3

        emissionRate: 0; emissionVariance: 6
        lifeSpan: 600; lifeSpanDeviation: 800
        angle: rotation + 90; angleDeviation: 60;
        velocity: 5; velocityDeviation: 10
        source: PWD + "img/effects/vehicle_smoke.png"
    }

    Particles {
        id: exhaustLater

        width: 1; height: 1
        x: (2 * centerX) - 3
        y: (2 * centerY) - 3

        emissionRate: 0; emissionVariance: 3
        lifeSpan: 1000; lifeSpanDeviation: 400
        angle: rotation + 90; angleDeviation: 60;
        velocity: 40; velocityDeviation: 60
        source: PWD + "img/effects/vehicle_smoke.png"
    }
}