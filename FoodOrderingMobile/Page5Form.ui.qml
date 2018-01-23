import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page5

    width: 1080
    height: 1920
    property bool toolbar_visible: false

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
        width: 253
        height: 127
        text: qsTr("MENU")
        font.pointSize: 19
        z: 8
    }
    property alias food_column: page5.food_column
    Rectangle {
        x: 157
        y: 151
        width: 711
        height: 1515
        border.width: 7
        z: 6

        ColumnLayout {
            id: food_column
            x: 0
            y: 0
        }

        Button {
            id: button1
            x: 65
            y: 842
            width: 167
            height: 64
            text: qsTr("Save")
        }

        Label {
            id: label
            x: 65
            y: 444
            width: 149
            height: 40
            text: qsTr("Full Name")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField
            x: 65
            y: 495
            width: 577
            height: 40
            text: qsTr("")
        }

        Label {
            id: label1
            x: 65
            y: 561
            width: 149
            height: 40
            text: qsTr("User name")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField1
            x: 65
            y: 612
            width: 577
            height: 40
            text: qsTr("")
        }

        Label {
            id: label2
            x: 65
            y: 676
            width: 149
            height: 40
            text: qsTr("Address")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }

        TextField {
            id: textField2
            x: 65
            y: 739
            width: 577
            height: 40
            text: qsTr("")
        }
    }
    Image {
        id: image
        x: 1
        y: -64
        width: 1079
        height: 967
        z: 0
        source: "Overeat-Greasy-Foods.jpg"
    }
    ToolBar {
        id: mobile_toolbar
        y: 18
        height: 39
        z: 6
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        visible: toolbar_visible

        ColumnLayout {
            id: columnLayout
            x: 0
            y: 96
            width: 735
            height: 593
            z: 1

            ToolButton {
                width: 450
                height: 150
                text: "Restaurants"
                Layout.preferredHeight: 150
                font.pointSize: 15
                Layout.preferredWidth: 450
                topPadding: 6
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                font.wordSpacing: 0
                font.weight: Font.Normal
                spacing: 0
                checkable: false
                autoExclusive: false
                clicked: swipeView.currentIndex = 1
                highlighted: true
                checked: true
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }
            ToolButton {
                y: 150
                width: 450
                height: 150
                text: "Meals"
                Layout.preferredHeight: 150
                visible: true
                z: 1
                font.pointSize: 15
                Layout.preferredWidth: 450
                topPadding: 6
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                font.wordSpacing: 0
                font.weight: Font.Normal
                spacing: 0
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }

            ToolButton {
                y: 300
                width: 450
                height: 150
                text: "Shopping Cart"
                Layout.preferredHeight: 150
                font.capitalization: Font.MixedCase
                font.pointSize: 15
                Layout.preferredWidth: 450
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
            }

            ToolButton {
                y: 450
                width: 450
                height: 150
                text: "Settings"
                Layout.preferredHeight: 150
                font.pointSize: 15
                Layout.preferredWidth: 450
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
            }
        }
    }

    Image {
        id: image1
        x: 1
        y: 903
        width: 1079
        height: 973
        z: 0
        source: "Overeat-Greasy-Foods.jpg"
    }
}
