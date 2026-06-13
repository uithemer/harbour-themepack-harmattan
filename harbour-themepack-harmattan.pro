TARGET = harbour-themepack-harmattan

MY_FILES = \
other/coverbg.png \
other/appinfo.png

OTHER_SOURCES += $$MY_FILES

my_resources.path = $$PREFIX/share/$$TARGET
my_resources.files = $$MY_FILES

appicons.files = appicons/*
appicons.path = /usr/share/icons/hicolor/

themepack.files = theme/*
themepack.files -= theme/themepack-helper.sh
themepack.path = $$PREFIX/share/$$TARGET

INSTALLS += my_resources appicons themepack

QT += concurrent
CONFIG += sailfishapp c++11

SOURCES += \
    src/themepack.cpp \
    src/main.cpp

OTHER_FILES += qml/harbour-themepack-harmattan.qml \
    qml/Settings.qml \
    qml/cover/CoverPage.qml \
    qml/components/*.qml \
    rpm/harbour-themepack-harmattan.changes \
    rpm/harbour-themepack-harmattan.spec \
    harbour-themepack-harmattan.desktop \
    qml/pages/FirstPage.qml \
    theme/themepack-helper.sh \
    scripts/png_to_svg.sh

CONFIG += sailfishapp_i18n

TRANSLATIONS += translations/*.ts

HEADERS += \
    src/themepack.h
