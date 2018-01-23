import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page5

    width: 1024
    height: 768

    header: Label {
        width: 50
        height: 64
        text: qsTr("Restaurants")
        font.pixelSize: 24
        visible: true
        styleColor: "#ffffff"
        padding: 10
    }

    FileIO {
        id: myFile
        source: "restaurants.txt"
    }

    Button {
        id: button
        x: 0
        y: 18
        text: qsTr("Menu")
    }

    property alias food_column: page5.food_column
    Rectangle {
        x: 157
        y: 122
        width: 711
        height: 383
        border.width: 7
        z: 6

        ColumnLayout {
            id: food_column
            x: 0
            y: 0
        }

        Button {
            id: button1
            x: 272
            y: 263
            width: 167
            height: 64
            text: qsTr("Save")
        }

        Label {
            id: label
            x: 107
            y: 76
            width: 149
            height: 40
            text: qsTr("Full Name")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField
            x: 262
            y: 76
            width: 364
            height: 40
            text: qsTr("")
        }

        Label {
            id: label1
            x: 107
            y: 132
            width: 149
            height: 40
            text: qsTr("User name")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField1
            x: 262
            y: 132
            width: 364
            height: 40
            text: qsTr("")
        }

        Label {
            id: label2
            x: 107
            y: 194
            width: 149
            height: 40
            text: qsTr("Address")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField2
            x: 262
            y: 194
            width: 364
            height: 40
            text: qsTr("")
        }
    }
    Image {
        id: image
        x: 0
        y: -78
        width: 1024
        height: 782
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }

    Image {
        id: image1
        x: 0
        y: -78
        width: 247
        height: 90
        z: 4
        source: "settings.png"
    }

    ToolBar {
        id: desktop_toolbar
        y: 18
        height: 39
        z: 6
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        visible: true

        RowLayout {
            id: row_layout
            anchors.fill: parent

            ToolButton {
                y: 0
                width: 150
                text: "Restaurants"
                Layout.preferredWidth: 70
                topPadding: 6
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                font.wordSpacing: 0
                font.weight: Font.Normal
                spacing: 0
                checkable: false
                autoExclusive: false
                highlighted: true
                checked: true
            }

            ToolButton {
                x: 150
                width: 150
                text: "Meals"
                Layout.preferredWidth: 70
                transformOrigin: Item.Center
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                background: Rectangle {
                    border.color: "#000000"
                    color: "#e0e0e0"
                    border.width: 7
                }
            }

            ToolButton {
                x: 300
                width: 150
                text: "Shopping Cart"
                Layout.preferredWidth: 70
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                background: Rectangle {
                    border.color: "#000000"
                    color: "#e0e0e0"
                    border.width: 7
                }
            }

            ToolButton {
                x: 450
                width: 150
                text: "Settings"
                Layout.preferredWidth: 70
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }
        }
    }
}
