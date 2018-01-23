import QtQuick 2.10
import QtQuick.Controls 2.3
import FileIO 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")
    property alias order_list : order_list
    Item {
        id:order_list
        property var order_list : []

        function setList(obj) {
            order_list.order_list = obj
        }

        function getList() {
            return order_list.order_list
        }

        function flushList() {
            for(var i = 0; i < order_list.order_list.length; i++) {
                order_list.order_list[i].destroy()
            }
            order_list.order_list = []
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        interactive: false

        Login {

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

        Orders {
            onActiveFocusChanged: {
                order_list.flushList()
                var list = []
                var contents = "Burrito.John Smith.71 Pilgrim Avenue.Burrito, Burrito, Taco.850rsd\n
                PizzaPalace.Mark Smith.70 Bowman Street.Cappriciosa, Cappriciosa, Cappriciosa.900rsd\n
                PingPong.Nanny Nessa.20 Magnolia Street.Burrito, Noodles, Noodles, Noodles, Chicken with Peanuts.850rsd\n
                Wurst.Jeane Primrose.522 Winchester Avenue.Burrito, KnackWurst, Knackwurst, Knackwurst.700rsd"

                var rests = contents.split("\n").filter(function(i) {return i !== ''})
                for (var i = 0; i < rests.length; i++) {
                    var data = rests[i].split('.')
                    var order = data[3]
                    console.log(data)
                    var item = {
                        "from" : data[0].trim(),
                        "to" : data[1].trim(),
                        "address" : data[2].trim(),
                        "order" : order,
                        "price" : data[4].trim()
                    }
                    var component = Qt.createComponent("OrderProperty.qml")
                    var obj = component.createObject(orders, {"from" : item["from"], "to" : item["to"], "address" : item["address"], "price" : item["price"], "order" : item["order"]});
                    list.push(obj)
                }
                scrollView.contentHeight = rests.length * 180
                order_list.setList(list)
            }
        }
    }

    FileIO {
        id:orders_file
        source : "orders.txt"
        onError: console.log(msg)
    }

}
