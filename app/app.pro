TARGET = LabCompass
TEMPLATE = app
CONFIG += precompile_header c++14
CONFIG -= debug_and_release debug_and_release_target

QT += qml quick quickcontrols2 widgets svg quickwidgets

INCLUDEPATH += \
    src \
    ../common/src \
    ../vendor/QtSuperMacros

DEPEND_LIBS += common
DEPEND_VENDOR_LIBS += QtSuperMacros
include(../config/dependencies.pri)

win32 {
    LIBS += -lPsapi
    dlls.path = $${OUT_PWD}
    dlls.files = win32-dlls/*
    INSTALLS += dlls
}

SOURCES += \
    src/main.cpp
