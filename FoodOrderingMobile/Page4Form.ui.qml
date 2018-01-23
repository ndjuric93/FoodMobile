import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page4_form

    width: 1080
    height: 1920
    property alias buy: buy
    property bool toolbar_visible: false
    property alias button: button

    property alias scrollView: scrollView
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

    property alias cart_column: cart_column

    Rectangle {
        id: page4_form_rect
        x: 162
        y: 145
        width: 765
        height: 1294
        z: 6
        ScrollView {
            id: scrollView
            x: 0
            y: 45
            width: 765
            height: 1335
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
        id: image
        x: 0
        y: -78
        width: 1080
        height: 975
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }

    Button {
        id: buy
        x: 489
        y: 1506
        width: 438
        height: 80
        text: qsTr("BUY!")
        z: 9
        font.pointSize: 22
        background: Rectangle {
            border.color: "#000000"
            color: "#ffffff"
            border.width: 7
        }
    }

    property alias rest_toolbar: rest_toolbar

    ToolBar {
        id: mobile_toolbar
        y: 18
        height: 1
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
                id: rest_toolbar
                width: 450
                height: 150
                text: "Restaurants ✔"
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
                text: "Meals ✔"
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
                onClicked: swipeView.currentIndex = 2
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
                onClicked: swipeView.currentIndex = 3
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
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
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }
        }
    }

    Label {
        x: 162
        y: 145
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

    Image {
        id: image1
        x: 0
        y: 903
        width: 1080
        height: 975
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }
}
