import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    property string title: "Beere Components"
    property bool menuActive: false
    property alias currentPage: main.source

    id: root
    visible: true
    color: "black"

    Loader {
        id: main
        anchors.top: titlebar.bottom
        anchors.bottom: taskbar.top
        width: parent.width
        //source: "qrc:/StartPage.qml"
        visible: !menuActive
    }

    TitleBar {
        id: titlebar
        anchors.top: parent.top
        width: parent.width
        height: 0.12*parent.height

    }

    Menu {
        id: menu
        anchors.top: titlebar.bottom
        anchors.bottom: taskbar.top
        width: parent.width
        visible: menuActive

    }

    Loader {
        id: taskbar
        anchors.bottom: parent.bottom
        width: parent.width
        height: 0.12*parent.height
    }

}
