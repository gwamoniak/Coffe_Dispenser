import QtQuick 2.15
import QtQuick.Controls 2.15

import coffee.style 1.0

BusyIndicator {
    id: busyIndicator

    contentItem: Item {
        implicitWidth: 280
        implicitHeight: 280

        Item {
            id: itemIndicator
            x: parent.width / 2 - 100
            y: parent.height / 2 - 100
            width: 280
            height: 280
            opacity: busyIndicator.running ? 1 : 0

            Behavior on opacity {
                OpacityAnimator {
                    duration: 250
                }
            }

            RotationAnimator {
                target: itemIndicator
                running: busyIndicator.visible && busyIndicator.running
                from: 0
                to: 360
                loops: Animation.Infinite
                duration: 1250
            }

            Repeater {
                id: repeater
                model: 8

                Rectangle {
                    id: delegate
                    x: itemIndicator.width / 2 - width / 2
                    y: itemIndicator.height / 2 - height / 2
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 8
                    color: MyStyle.accentBackground

                    required property int index

                    transform: [
                        Translate {
                            y: -Math.min(itemIndicator.width, itemIndicator.height) * 0.5 + 5
                        },
                        Rotation {
                            angle: delegate.index / repeater.count * 360
                            origin.x: 5
                            origin.y: 5
                        }
                    ]
                }
            }
        }
    }
}

