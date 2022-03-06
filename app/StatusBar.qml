import QtQuick 2.15
import coffee.style 1.0

Rectangle {
    id: statusBar
    color: MyStyle.accentBackground
    width: parent.width - 300
    height: 50
    radius: 6

    Rectangle {
        id: notificationBadge
        height: 35
        width: 35
        radius: 15
        color: MyStyle.textColor
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 5
        }

        Text {
            anchors.centerIn: parent
            font.pixelSize: 24
            color: "black"
            text: qsTr("3")
        }
    }

    Text {
        id: timeText
        anchors.centerIn: parent
        color: MyStyle.textColor
        font.pixelSize: 36
        text: "12:38"

    }


    Image {
        id: wifi
        height: 35
        width: 35

        anchors{
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 5
        }

        source: "qrc:/icons/wifi.png"
    }

}
