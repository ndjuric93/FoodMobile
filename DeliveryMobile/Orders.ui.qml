import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    width: 1080
    height: 1920
    font.capitalization: Font.AllUppercase
    title: "Orders Page"
    spacing: -1

    Image {
        id: image
        x: 0
        y: 0
        width: 1080
        height: 890
        source: "Overeat-Greasy-Foods.jpg"
    }

    property alias orders: orders_column
    property alias scrollView: scrollView

    Rectangle {
        x: 127
        y: 88
        width: 827
        height: 1442
        z: 2

        ScrollView {
            id: scrollView
            x: 0
            y: 98
            width: 827
            height: 1311
            focusPolicy: Qt.ClickFocus
            opacity: 1
            z: 7
            contentHeight: -1
            contentWidth: -1
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn

            ColumnLayout {
                id: orders_column
                x: 6
                y: 0
                width: 827
                height: 0
            }
        }

        Label {
            id: label
            x: 14
            y: 0
            width: 805
            height: 63
            text: qsTr("ORDERS")
            font.pointSize: 31
        }
    }

    Image {
        id: image2
        x: 0
        y: 888
        width: 1080
        height: 1032
        source: "Overeat-Greasy-Foods.jpg"
    }
}
