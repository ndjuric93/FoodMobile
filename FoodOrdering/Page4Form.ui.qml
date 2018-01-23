import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page4_form

    width: 1024
    height: 768
    property alias buy: buy

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

    Image {
        id: image
        x: 0
        y: -78
        width: 275
        height: 98
        z: 9
        source: "shopping_cart.png"
    }
    property alias cart_column: cart_column

    Rectangle {
        id: page4_form_rect
        x: 162
        y: 104
        width: 765
        height: 584
        z: 6
        ScrollView {
            id: scrollView
            x: 0
            y: 45
            width: 765
            height: 539
            opacity: 1
            focusPolicy: Qt.WheelFocus
            clip: true
            z: 7
            contentHeight: -1
            contentWidth: -1
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn

            ColumnLayout {
                x: 0
                y: 0
                id: cart_column
            }
        }
    }
    Image {
        id: image1
        x: 0
        y: -78
        width: 1024
        height: 846
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }

    Button {
        id: buy
        x: 679
        y: 710
        width: 248
        height: 40
        text: qsTr("BUY!")
        z: 8
        font.pointSize: 22
        background: Rectangle {
            border.color: "#000000"
            color: "#ffffff"
            border.width: 7
        }
    }

    property alias rest_toolbar: rest_toolbar

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
                id: rest_toolbar
                y: 0
                width: 150
                text: "Restaurants ✔"
                autoRepeat: false
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
                onClicked: swipeView.currentIndex = 1
                background: Rectangle {
                    color: "#e0e0e0"
                    border.color: "#000000"
                    border.width: 7
                }
            }

            ToolButton {
                x: 150
                width: 150
                text: "Meals ✔"
                hoverEnabled: true
                checked: true
                font.pointSize: 15
                enabled: true
                autoExclusive: false
                checkable: false
                Layout.preferredWidth: 70
                transformOrigin: Item.Center
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                onClicked: swipeView.currentIndex = 2
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
                font.pointSize: 15
                Layout.preferredWidth: 70
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                flat: true
                onClicked: swipeView.currentIndex = 3
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }

            ToolButton {
                x: 450
                width: 70
                height: 40
                text: qsTr("Settings")
                font.family: "noto sans"
                scale: 1
                font.pointSize: 15
                Layout.preferredWidth: 33
                Layout.alignment: Qt.AlignRight | Qt.AlignBaseline
                Layout.fillWidth: true
                flat: true
                onClicked: swipeView.currentIndex = 4
            }
        }
    }

    Label {
        x: 162
        y: 95
        width: 1009
        height: 64
        color: "#000000"
        text: qsTr("Shopping Cart List")
        font.pixelSize: 30
        styleColor: "#ffffff"
        z: 7
        visible: true
        padding: 10
        font.bold: true
    }
}
