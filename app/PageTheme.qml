import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import coffee.style 1.0

Page{
    id: page
    background: Rectangle {
        width: parent.width
        height: parent.height
        anchors.fill: parent

        gradient: RadialGradient
        {
            centerX: parent.height/2; centerY: parent.width/2
            centerRadius: 150
            focalX: centerX; focalY: centerY
            GradientStop { position: 0; color: MyStyle.pageBackground }
            GradientStop { position: 0.5; color: MyStyle.windowBackground }
            GradientStop { position: 1; color: MyStyle.pageBackground }
        }

    }
}
