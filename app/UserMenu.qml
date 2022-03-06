import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

import coffee.style 1.0

PageTheme {
    id:userMenu

    RoundButton{
        id: quitButtonRect
        width: 50
        height: 50
        radius: 20
        onClicked: {
              Qt.quit()
        }
        anchors{
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }

        Rectangle{
            id:settings
            width: parent.width
            height: parent.height
            radius: parent.radius
            color: MyStyle.accentBackground
            Text {
                id: quitButton
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                color: "white"
                text: qsTr("Quit")

            }
        }
    }
}

