import QtQuick 2.0

ListModel {
    ListElement {
        name: "Settings"
        action: "SettingsPage"
        type: "page"
    }
    ListElement {
        name: "Exit"
        action: "exit"
        type: "app"
    }
}
