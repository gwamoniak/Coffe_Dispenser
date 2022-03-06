import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import coffee.style 1.0
import CoffeeDispenser 1.0

ApplicationWindow  {

    readonly property alias pageStack: stackView

    id: appWindow
    width: 800
    height: 600
    visible: true
    title: qsTr("Coffee Dispenser")
    color: MyStyle.windowBackground

    SystemController {
            id: systemController
        }

    StackView {
         id: stackView
         anchors.fill: parent
         initialItem: BootMenu {}
     }



}
