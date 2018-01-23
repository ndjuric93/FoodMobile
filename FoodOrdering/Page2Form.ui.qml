import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page2

    width: 1024
    height: 768

    property alias page2: page2

    property alias scrollView: scrollView

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

    property alias rest_column: rest_column
    Rectangle {
        x: 162
        y: 69
        width: 765
        height: 640
        z: 6
        ScrollView {
            id: scrollView
            x: 0
            y: 77
            width: 765
            height: 562
            opacity: 1
            focusPolicy: Qt.ClickFocus
            clip: true
            z: 7
            contentHeight: -1
            contentWidth: -1
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn

            ColumnLayout {
                x: 0
                y: 0
                id: rest_column
            }
        }
    }

    Image {
        id: image1
        x: 0
        y: -78
        width: 261
        height: 100
        z: 8
        source: "restaurants_label.png"
    }

    Image {
        id: image
        x: 0
        y: -78
        width: 1024
        height: 846
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
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
                font.pointSize: 15
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
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }

            ToolButton {
                x: 150
                width: 150
                text: "Meals"
                font.bold: true
                font.pointSize: 15
                Layout.preferredWidth: 70
                topPadding: 6
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                font.wordSpacing: 0
                font.weight: Font.Normal
                spacing: 0
                background: Rectangle {
                    color: "#e0e0e0"
                    border.color: "#000000"
                    border.width: 7
                }
            }

            ToolButton {
                x: 300
                width: 150
                text: "Shopping Cart"
                font.bold: true
                font.capitalization: Font.MixedCase
                font.pointSize: 15
                Layout.preferredWidth: 70
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                background: Rectangle {
                    color: "#e0e0e0"
                    border.color: "#000000"
                    border.width: 7
                }
            }

            ToolButton {
                x: 450
                width: 70
                height: 40
                text: qsTr("Settings")
                font.bold: true
                font.family: "noto sans"
                scale: 1
                font.pointSize: 15
                Layout.preferredWidth: 33
                Layout.alignment: Qt.AlignRight | Qt.AlignBaseline
                Layout.fillWidth: true
                flat: true
                onClicked: swipeView.currentIndex = 5
                background: Rectangle {
                    color: "#e0e0e0"
                    border.color: "#000000"
                    border.width: 7
                }
            }
        }
    }

    Label {
        x: 162
        y: 69
        width: 765
        height: 78
        text: qsTr("List of restaurants")
        verticalAlignment: Text.AlignVCenter
        visible: true
        styleColor: "#f64040"
        font.bold: true
        z: 7
        padding: 10
        font.pixelSize: 41
    }
}
