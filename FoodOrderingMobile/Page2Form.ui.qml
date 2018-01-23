import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Page {
    id: page2

    width: 1080
    height: 1920
    property alias toolButton: toolButton
    property alias button: button

    property alias page2: page2

    property alias scrollView: scrollView

    property bool toolbar_visible: false
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

    property alias rest_column: rest_column
    Rectangle {
        x: 162
        y: 146
        width: 765
        height: 1684
        z: 6
        ScrollView {
            id: scrollView
            x: 0
            y: 45
            width: 765
            height: 1716
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
                width: 765
                height: 1
                spacing: 0
                id: rest_column
            }
        }
    }
    Image {
        id: image
        x: 0
        y: 0
        width: 1090
        height: 846
        z: 4
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
                background: Rectangle {
                    border.color: "#000000"
                    color: "#ffffff"
                    border.width: 7
                }
            }

            ToolButton {
                id: toolButton
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
                onClicked: swipeView.currentIndex = 5
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
        y: 146
        width: 765
        height: 46
        text: qsTr("List of restaurants")
        verticalAlignment: Text.AlignVCenter
        visible: true
        styleColor: "#f64040"
        font.bold: true
        z: 7
        padding: 10
        font.pixelSize: 35
    }

    Image {
        id: image2
        x: 0
        y: 846
        width: 1090
        height: 1114
        z: 4
        source: "Overeat-Greasy-Foods.jpg"
    }
}
