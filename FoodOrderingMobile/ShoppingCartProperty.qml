import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0


Rectangle {
    id: shoppingcart_property

    property string food
    property string price_int

    x : 0
    y : 0
    color: "#ffffff"
    border.width: 0
    width: 766
    height: 75


    Button {
        id: select
        x: 657
        y: 8
        width: 91
        height: 59
        text: "X"
        font.pointSize: 25

        onClicked: {
            var list = shopping_cart.getList()
            shoppingcart_property.destroy()
            for(var i = 0; i < list.length; i++) {
                if(list[i].food === food) {
                    list.splice(i, 1)
                }
            }
        }
    }

    Label {
        id: name
        x: 8
        y: 8
        width: 328
        height: 59
        text: food
        font.pointSize: 15
    }

    Label {
        id: price
        x: 454
        y: 8
        width: 84
        height: 59
        text: price_int
        font.pointSize: 15
    }
}
