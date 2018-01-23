import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page3_form

    width: 1080
    height: 1920
    property bool toolbar_visible: false
    property alias button: button

    property alias scr_view: scrollView
    property alias food_tit: page3_form.title

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
    property alias food_column: food_column
    Rectangle {
        x: 162
        y: 151
        width: 765
        height: 1299
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
                id: food_column
            }
        }
    }
    Image {
        id: image
        x: 0
        y: -64
        width: 1080
        height: 948
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }

    property alias to_shopping_cart: to_shopping_cart

    Button {
        id: to_shopping_cart
        x: 539
        y: 1481
        width: 388
        height: 85
        text: qsTr("To Shopping Cart!")
        z: 8
        font.pointSize: 22
    }

    property alias restaurant_tool_button: restaurant_tool_button
    Label {
        x: 162
        y: 151
        width: 765
        height: 46
        text: qsTr("List of meals")
        verticalAlignment: Text.AlignVCenter
        visible: true
        styleColor: "#f64040"
        font.bold: true
        z: 7
        padding: 10
        font.pixelSize: 35
    }
    ToolBar {
        id: mobile_toolbar
        y: 18
        height: 0
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
                id: restaurant_tool_button
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
                onClicked: swipeView.currentIndex = 1
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
                onClicked: swipeView.currentIndex = 2
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
                onClicked: swipeView.currentIndex = 3
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

            ToolButton {
                y: 450
                width: 450
                height: 150
                text: "Settings"
                Layout.preferredHeight: 150
                onClicked: swipeView.currentIndex = 4
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

    Image {
        id: image1
        x: 5
        y: 890
        width: 1080
        height: 966
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }
}
