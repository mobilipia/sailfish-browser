TEMPLATE = subdirs
SUBDIRS += src tests translations settings

# The .desktop file
desktop.files = sailfish-browser.desktop
desktop.path = /usr/share/applications

dbus_service.files = org.sailfishos.browser.service
dbus_service.path = /usr/share/dbus-1/services

icons.files = icons/*.png
icons.path = /usr/share/themes/jolla-ambient/meegotouch/icons

chrome_scripts.files = chrome/*.js
chrome_scripts.path = /usr/lib/mozembedlite/chrome/embedlite/content

INSTALLS += desktop dbus_service icons chrome_scripts

OTHER_FILES += \
    tests/test-definition/*.xml \
    tests/auto/*.qml \
    rpm/*.spec
