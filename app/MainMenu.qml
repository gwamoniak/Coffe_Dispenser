import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15




PageTheme {
    id:mainPage

    StatusBar {
        id: statusBar
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter

        }
    }

    RoundButton{
        width: 50
        height: 50
        radius: 20
        onClicked: pageStack.push("qrc:/app/UserMenu.qml")
        Rectangle{
            id:settings
            width: parent.width
            height: parent.height
            radius: parent.radius
            color: MyStyle.accentBackground
            anchors{
                top: parent.top
                left: parent.left
            }

            Image {
                id: settingsIcon
                width: 50
                height: 50
                source: "qrc:/icons/settings.png"

            }
        }
    }



    GridLayout {
        id: gridView
        Layout.preferredHeight: parent - 100
        Layout.preferredWidth: parent.width
        rows    : 2
        columns : 4
        anchors.fill: parent
        anchors.rightMargin: 30
        anchors.leftMargin: 60
        columnSpacing: 10
         anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Repeater{
            model: CoffeeModelList {}
            delegate: RoundButton
            {
                id: drinksButton
                property int visualIndex:  index
                property string iconName:  name

                onClicked: { console.log("Button name: " + iconName )
                            systemController.setDrinkType(iconName)
                            systemController.setDrinkIconType(iconSource)
                            stackView.push("CoffeeTuning.qml")
                }

                Rectangle{
                    id:drinksRect
                    width:  100
                    height: 100
                    radius: width/2
                    color: MyStyle.accentBackground
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    Image {
                        id: drinkIcons
                        source: iconSource;
                        width: parent.width - 30
                        height: parent.height - 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text { text: name; color: MyStyle.textColor;
                    anchors.top: drinksRect.bottom
                    anchors.horizontalCenter: parent.horizontalCenter }


            }
        }

    }

}

