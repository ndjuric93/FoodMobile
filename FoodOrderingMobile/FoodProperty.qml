import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0

Rectangle {
    id: food_property

    property string food_name_txt
    property string ingredients_list
    property string food_description
    property double rating_number_dbl
    property string category
    property string price
    property string image_src

    x : 0
    y : 0
    color: "#ffffff"
    border.width: 6
    width: 765
    height: 350


    Image {
        x: 8
        y: 22
        width: 183
        height: 149
        source: image_src
    }

    Button {
        id: select
        x: 206
        y: 293
        width: 538
        height: 40
        text: "Add to Cart"
        onClicked: {
            var component = Qt.createComponent("ShoppingCartProperty.qml")
            var obj = component.createObject(cart_form.cart_column, {"food" : food_name_txt, "price_int" : food_property.price})
            shopping_cart.getList().push(obj)
        }
    }

    Label {
        id: food_name
        x: 206
        y: 22
        width: 538
        height: 29
        text: food_name_txt
        font.pointSize: 12
    }

    Text {
        id: description
        x: 206
        y: 64
        width: 538
        height: 146
        text: food_description
        font.pointSize: 7
        wrapMode: Text.WordWrap
    }

    Text {
        id: ingredients
        x: 206
        y: 235
        width: 538
        height: 52
        font.pointSize: 10
        wrapMode: Text.WordWrap
        text: ingredients_list
    }

    Label {
        id: category
        x: 8
        y: 186
        width: 176
        height: 24
        font.pointSize: 15
    }

    Label {
        id: price
        x: 8
        y: 216
        width: 176
        height: 24
        text: "Price: " + food_property.price
        font.pointSize: 10
    }
}
