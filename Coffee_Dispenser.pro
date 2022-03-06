QT += quick

SOURCES += \
        controller/systemcontroller.cpp \
        main.cpp

resources.files = app/main.qml
resources.prefix = /$${TARGET}
RESOURCES += resources \
    resources.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


DISTFILES += \
    app/BootMenu.qml \
    app/CoffeeBrewing.qml \
    app/CoffeeModelList.qml \
    app/CoffeeTuning.qml \
    app/MainMenu.qml \
    app/MyBusyIndicator.qml \
    app/MySlider.qml \
    app/MyStyle.qml \
    app/PageTheme.qml \
    app/StatusBar.qml \
    app/main.qml \
    app/UserMenu.qml \
    icons/black_coffee.png \
    icons/black_tea.png \
    icons/cappuccino.png \
    icons/chocolate.png \
    icons/espresso.png \
    icons/green_tea.png \
    icons/soup.png \
    icons/water.png

HEADERS += \
    controller/systemcontroller.h
