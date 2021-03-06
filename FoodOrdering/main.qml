import QtQuick 2.10
import QtQuick.Controls 2.3
import FileIO 1.0
import QtQuick.Dialogs 1.1

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Tabs")
    id: main

    property alias restaurant_list : restaurant_list.restaurant_list
    property alias selected_list : restaurant_list.selected_list
    property alias selected_res : restaurant_list.selection

    Item {
        id:restaurant_list
        property var restaurant_list : []
        property var selected_list : []

        property int selection : 0

        function setList(obj) {
            restaurant_list.restaurant_list = obj
            restaurant_list.selected_list = obj
        }

        function getList() {
            return restaurant_list.restaurant_list
        }

        function setSelection(variable) {
            restaurant_list.selection = variable
        }

        function getSelection() {
            for(var i = 0; i < restaurant_list.restaurant_list.length; i++) {
                if(selected_list[i] === true) {
                    return i
                }
            }
            return -1
        }


        function flushList() {
            var list = restaurant_list.restaurant_list
            for(var i = 0;i < list.length; i++) {
                list[i].destroy()
                list.remove(i)
            }
        }
    }

    Item {
        id:shopping_cart
        property var cart : []

        function getList() {
            return shopping_cart.cart
        }

        function flushList() {
            for(var i = 0;i < shopping_cart.cart.length; i++) {
                shopping_cart.cart[i].destroy()
                shopping_cart.cart.slice(i, 1)
            }
            shopping_cart.cart = []
        }
    }

    property alias food_list : food_list

    Item {
        id:food_list
        property var food_list : []

        function setList(obj) {
            food_list.food_list = obj
        }

        function getList() {
            return food_list.food_list
        }

        function flushList() {
            for(var i = 0; i < food_list.food_list.length; i++) {
                food_list.food_list.slice(i,1)
            }
        }
    }
    property alias food_properties : food_properties
    Item {
        id:food_properties
        property var food_properties : []

        function setList(obj) {
            food_properties.food_properties = obj
        }

        function getList() {
            return food_properties.food_properties
        }

        function flushList() {
            for(var i = 0; i < food_properties.food_properties.length; i++) {
                food_properties.food_properties[i].destroy()
                food_properties.food_properties.slice(i,1)
            }
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        interactive: false

        Page1Form {
            login_btn.onClicked: {
                swipeView.currentIndex = 1
                /*if(username_tf.getText(0, username_tf.length) === "Kupac"){
                    swipeView.currentIndex = 1
                } else if (username_tf.getText(0, username_tf.length) === "Dostavljac"{
                    swipeView.currentIndex= neki
                } else {
                    wrong_credentials.text = "Wrong credentials!"
                }*/
            }
        }


        Page2Form {
            id:page2

            onActiveFocusChanged: {
                var list = []
                var contents = restaurant_file.read()
                var rests = contents.split("\n").filter(function(i) {return i !== ''})
                for (var i = 0; i < rests.length; i++) {
                    var data = rests[i].split(',')
                    var item = {
                        "name" : data[0],
                        "desc" : data[1],
                        "rating" : data[2],
                        "img_src" : data[3],
                        "selected" : false
                    }
                    var component = Qt.createComponent("RestaurantProperty.qml")
                    var obj = component.createObject(rest_column, {"name" : item["name"], "description_txt" : item["desc"], "rating_number_dbl" : item["rating"], "image_src" : item["img_src"], "selected" : item["selected"]});
                    list.push(obj)
                }
                scrollView.contentHeight = rests.length * 180
                restaurant_list.setList(list)
            }

        }

        property alias food_column_global : food_form.food_column

        Page3Form {
            id: food_form

            to_shopping_cart.onClicked: {
                swipeView.currentIndex = 3
            }

            onActiveFocusChanged: {
                if(swipeView.currentIndex === 2) {


                var list = food_list.getList()
                var food_props = []
                for(var i = 0; i < list.length ; i++) {
                    var component = Qt.createComponent("FoodProperty.qml")
                    var obj = component.createObject(food_column, list[i]);
                    food_props.push(obj)
                }
                food_properties.setList(food_props)
                scr_view.contentHeight = list.length * 250
                }

            }

            restaurant_tool_button.onClicked: messageDialog.visible = true

            MessageDialog {
                id: messageDialog
                title: "Be careful!!"
                text: "Changing restaurant will cancel your current order!!"
                standardButtons: MessageDialog.Ok | MessageDialog.Cancel
                onAccepted: {
                    swipeView.currentIndex = 1
                    food_list.flushList()
                    food_properties.flushList()
                    shopping_cart.flushList()
                }


                Component.onCompleted: visible = false
            }
        }

        Page4Form {
            id:cart_form
            buy.onClicked: {
                message_dialog_error.visible = true
            }
            rest_toolbar.onClicked: messageDialog.visible = true


            MessageDialog {
                standardButtons: MessageDialog.Ok | MessageDialog.Cancel

                id: message_dialog_error
                title: "Order finished!"
                text: "Your order is coming shortly! "
                onAccepted: {
                    swipeView.currentIndex = 1
                    food_list.flushList()
                    food_properties.flushList()
                    shopping_cart.flushList()
                }
                Component.onCompleted: visible = false
            }
        }



        FileIO {
            id: restaurant_file
            source: "restaurants.txt"
            onError: console.log(msg)
        }

    }
}
