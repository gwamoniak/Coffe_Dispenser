import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

import coffee.style 1.0

PageTheme {
    id:coffeeBrewingPage

    StatusBar {
        id: statusBarBrewingPage
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter

        }
    }

    Rectangle{
        id:iconRectBrew
        anchors{
            left: parent.left
            top: statusBarBrewingPage.bottom
            leftMargin: 15
            rightMargin: 15
            bottomMargin: 15
            topMargin: 15
        }
        opacity: 0.8
        height: parent.height - 150
        width: parent.width/2
        color: MyStyle.accentBackground
        Image {
            id: iconImageBrew
            width: 150
            height: 150
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
            source: systemController.drinkIconType
        }
        Text { text: systemController.drinkType; color: MyStyle.textColor;
            anchors.top: iconImageBrew.bottom
            anchors.horizontalCenter: parent.horizontalCenter }

    }

    Rectangle{
        id:settingsRectBrew
        anchors{
            right: parent.right
            top: statusBarBrewingPage.bottom
            leftMargin: 15
            rightMargin: 20
            bottomMargin: 15
            topMargin: 15
        }
        height: parent.height - 150
        width: parent.width/2
        color: "black"

        Timer {
            id: dispensingTimer
            interval: 3000
            running: false
            //onTriggered: stackView.push("FinishScreen.qml")
        }

        Component.onCompleted: {
            dispensingTimer.start()
        }

//        BusyIndicator {
//            id: dispensingBusyIndicator
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.horizontalCenter: parent.horizontalCenter
//            width: 280
//            height: 280
//            //color: MyStyle.accentBackground
//        }

        MyBusyIndicator {
              id: dispensingBusyIndicator
        }

    }

    Rectangle{
        id:navigationButtonsRectBrew
        width: parent.width/2
        anchors.top: settingsRectBrew.bottom
        anchors.right: settingsRectBrew.right
        anchors.topMargin: 5
        RowLayout{
            id:navigationButtonsBrew
            Layout.fillWidth: true
            Layout.preferredWidth: parent.width
            width: parent.width
            RoundButton{
                id:stopButton
                Layout.preferredWidth: 250
                Layout.preferredHeight: 60
                radius: 60
                onClicked: {
                    stopButtonRect.color = "red"
                    dispensingBusyIndicator.running = false
                    //pageStack.push("qrc:/app/CoffeeBrewing.qml")
                }
                Rectangle{
                    id:stopButtonRect
                    width: parent.width
                    height: parent.height
                    radius: parent.radius
                    color: MyStyle.accentBackground
                    Image {
                        id: startButtonIcon
                        width: 50
                        height: 50
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/icons/stop_button.png"
                    }

                }
            }
            RoundButton{
                id:backButton
                Layout.preferredWidth: 100
                Layout.preferredHeight: 60
                radius: 30
                onClicked: pageStack.push("qrc:/app/CoffeeTuning.qml")
                Rectangle{
                    id:homeButtonRect
                    width: parent.width
                    height: parent.height
                    radius: parent.radius
                    color: MyStyle.accentBackground

                    Image {
                        id: homeButtonIcon
                        width: 50
                        height: 50
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/icons/back_button.png"
                    }

                }
            }
        }
    }

}



