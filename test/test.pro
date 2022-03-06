QT += testlib
QT += gui
CONFIG += qt warn_on depend_includepath testcase

TEMPLATE = app

SOURCES +=  tst_dispensertest.cpp \
            ../controller/systemcontroller.cpp
HEADERS += \
    ../controller/systemcontroller.h
