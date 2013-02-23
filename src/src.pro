#-------------------------------------------------
#
# Project created by QtCreator 2011-11-24T11:51:40
# CloseCombatFree
# Author (c) Tomasz 'sierdzio' Siekierda
# sierdzio@gmail.com
# sierdzio.com
#-------------------------------------------------

include(globalImports.pri)

QT = core gui qml quick

TARGET = closecombatfree

DESTDIR = $${EXEC_DIRECTORY}
OBJECTS_DIR = $${BUILD_DIRECTORY}
MOC_DIR = $${BUILD_DIRECTORY}
RCC_DIR = $${BUILD_DIRECTORY}

TEMPLATE = app

HEADERS += \
    config/ccfconfig.h \
    config/ccfconfigparser.h \
    config/ccfconfigsaver.h \
    ccferror.h \
    ccfmain.h \
    ccfglobal.h \
    ccfterrain.h \
    ccfgamemanager.h \
    config/ccfconfigdata.h \
    logic/ccfenginehelpers.h \
    logic/ccfscenariostate.h \
    config/ccflogger.h \
    config/ccfcommandlineparser.h \
    qmlBase/ccfqmlbasescenario.h \
    qmlBase/ccfqmlbaseunit.h \
    logic/ccfobjectbase.h \
    qmlBase/ccfqmlbasesoldier.h \
    qmlBase/ccfqmlbaserostermenu.h \
    qmlBase/ccfqmlbasemap.h

SOURCES += main.cpp \
    config/ccfconfig.cpp \
    config/ccfconfigparser.cpp \
    config/ccfconfigsaver.cpp \
    ccferror.cpp \
    ccfmain.cpp \
    ccfglobal.cpp \
    ccfterrain.cpp \
    ccfgamemanager.cpp \
    config/ccfconfigdata.cpp \
    logic/ccfenginehelpers.cpp \
    logic/ccfscenariostate.cpp \
    config/ccflogger.cpp \
    config/ccfcommandlineparser.cpp \
    qmlBase/ccfqmlbasescenario.cpp \
    qmlBase/ccfqmlbaseunit.cpp \
    logic/ccfobjectbase.cpp \
    qmlBase/ccfqmlbasesoldier.cpp \
    qmlBase/ccfqmlbaserostermenu.cpp \
    qmlBase/ccfqmlbasemap.cpp

OTHER_FILES += \
    ../qml/main.qml \
    ../qml/gui/UnitSelectionBox.qml \
    ../qml/gui/RubberBand.qml \
    ../qml/gui/menuEntries/RosterMenuEntry.qml \
    ../qml/gui/RosterMenu.qml \
    ../qml/gui/OrderMarker.qml \
    ../qml/gui/DefenceSphere.qml \
    ../qml/gui/menuEntries/ContextMenuEntry.qml \
    ../qml/gui/ContextMenu.qml \
    ../qml/maps/Map.qml \
    ../qml/scenarios/Scenario.qml \
    ../qml/effects/Effect.qml \
    ../qml/units/Unit.qml \
    ../qml/units/tanks/TurretImage.qml \
    ../qml/units/tanks/Turret.qml \
    ../qml/units/tanks/Tank.qml \
    ../qml/units/tanks/Hull.qml \
    ../qml/gui/SimpleInfoBox.qml \
    ../qml/gui/PopUpArrow.qml \
    ../qml/gui/TopMenu.qml \
    ../qml/gui/menuEntries/MenuEntry.qml \
    ../qml/gui/ZoomBox.qml \
    ../qml/gui/ZoomButton.qml \
    ../qml/gui/BottomMenu.qml \
    ../qml/gui/SoldierMenu.qml \
    ../qml/gui/OptionsMenu.qml \
    ../qml/gui/StatusMessageMenu.qml \
    ../qml/gui/menuEntries/StatusMessageMenuEntry.qml \
    ../qml/maps/props/Prop.qml \
    ../qml/maps/props/PropRectangle.qml \
    \
    ../scenarios/Scenario_tst1.qml \
    ../units/tanks/tests/Tank_tst3_hull.qml \
    ../units/tanks/tests/Tank_tst3.qml \
    ../units/tanks/tests/Tank_tst2_turret.qml \
    ../units/tanks/tests/Tank_tst2.qml \
    ../units/tanks/tests/Tank_tst1_turret.qml \
    ../units/tanks/tests/Tank_tst1_hull.qml \
    ../units/tanks/tests/Tank_tst1.qml \
    ../maps/Map_tst1.qml \
    ../maps/Map_tst2.qml \
    ../maps/props/HouseBasic_tst.qml \
    ../maps/props/Tree_tst.qml \
    ../scenarios/Scenario_tst2.qml \
    ../qml/menus/ScenarioMenu.qml \
    ../maps/Map_tst3.qml \
    ../scenarios/Scenario_tst3.qml \
    ../qml/gui/ScenarioMenuEntry.qml \
    ../qml/gui/PreferencesMenu.qml \
    ../qml/gui/menuEntries/PreferencesCheckboxEntry.qml \
    ../qml/gui/menuEntries/PreferencesScreenSizeEntry.qml \
    ../qml/gui/menuEntries/PreferencesSingleTextInputEntry.qml \
    ../src/config/saveFileTemplate.txt \
    ../qml/gui/LoadGameMenu.qml \
    ../qml/gui/menuEntries/LoadGameEntries.qml \
    ../qml/maps/props/PropCluster.qml \
    ../scenarios/Scenario_tst4.qml \
    ../editor/ScenarioEditor.qml \
    ../qml/gui/AboutMenu.qml \
    ../qml/campaigns/CampaignMapList.qml \
    ../qml/maps/MapCluster.qml \
    ../campaigns/Campaign_tst1.qml \
    ../qml/effects/VehicleExhaust.qml \
    ../qml/effects/VehicleExplosion.qml \
    ../qml/weather/Weather.qml \
    ../qml/effects/Shadow.qml \
    ../qml/menus/MainMenu.qml \
    ../maps/Map_tst4.qml \
    ../qml/effects/GunFireEffect.qml \
    ../qml/units/old_Soldier.qml

#RESOURCES += \
#    skinResource.qrc \
#    tempResource.qrc \
#    imgResource.qrc \
#    coreResource.qrc
 
