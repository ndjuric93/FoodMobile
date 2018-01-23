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
    height: 250


    Image {
        x: 8
        y: 16
        width: 176
        height: 146
        source: image_src
    }

    Button {
        id: select
        x: 577
        y: 195
        width: 150
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
        width: 353
        height: 24
        text: food_name_txt
    }

    Label {
        id: description
        x: 206
        y: 64
        width: 538
        height: 72
        text: food_description
    }

    Label {
        id: ingredients
        x: 206
        y: 155
        width: 538
        height: 24
        text: "Ingredients: " + food_property.ingredients_list
    }

    Label {
        id: category
        x: 8
        y: 176
        width: 176
        height: 24
        text: "Category: " + food_property.category
    }

    Label {
        id: price
        x: 8
        y: 206
        width: 176
        height: 24
        text: "Price: " + food_property.price
    }
}
