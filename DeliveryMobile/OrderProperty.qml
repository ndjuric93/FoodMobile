import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0


Rectangle {
    id: restaurant_property

    property string from
    property string to
    property string price
    property string order
    property string address


    x : 0
    y : 0
    color: "#ffffff"
    border.width: 6
    width: 800
    height: 250

    Button {
        id: select
        x: 404
        y: 179
        width: 350
        height: 50
        text: "CANCEL"
        font.pointSize: 20
        onClicked: restaurant_property.destroy()
    }

    Label {
        id: from
        x: 18
        y: 18
        width: 320
        height: 40
        text: "From " + restaurant_property.from
        font.pointSize: 10
    }

    Label {
        id: to
        x: 374
        y: 19
        width: 288
        height: 39
        text: "To " + restaurant_property.to
        font.pointSize: 10
    }

    Button {
        id: view_more
        x: 18
        y: 179
        width: 350
        height: 50
        text: "DONE"
        font.pointSize: 20
        onClicked: restaurant_property.destroy()
    }

    Label {
        id: price
        x: 592
        y: 69
        width: 186
        height: 42
        text: "Price: " + restaurant_property.price
        font.pointSize: 10
    }

    Label {
        id: address
        x: 18
        y: 69
        width: 423
        height: 42
        text: "Address: " + restaurant_property.address
        font.pointSize: 10
    }

    TextArea {
        id: order
        x: 18
        y: 117
        width: 760
        height: 42
        text: "Order:" + restaurant_property.order
        font.pointSize: 10
    }
}
