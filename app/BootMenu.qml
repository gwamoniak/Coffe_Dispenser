import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

// singleton type in use
import coffee.style 1.0

PageTheme {
    id:bootPage
    property double startTime: 0

    Timer {
        id: bootTimer
        interval: 2000
        repeat: false
        running: false
        triggeredOnStart: false
        onTriggered: {
            pageStack.push("qrc:/app/MainMenu.qml")
        }
    }

        Text {
            id: bootingText
            text: qsTr("Booting please wait ...")
            font.pointSize: 24
            color: MyStyle.textColor
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
        }

    Component.onCompleted: bootTimer.start()

}
