import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import FileIO 1.0


Rectangle {
    id: restaurant_property

    property alias restaurant_name : restaurant_property.name
    property alias restaurant_selected : restaurant_property.selected

    property string name
    property string description_txt
    property double rating_number_dbl
    property string image_src

    property bool selected


    x : 0
    y : 0
    color: "#ffffff"
    border.width: 6
    width: 765
    height: 180

    Image {
        x: 8
        y: 16
        width: 119
        height: 108
        source: image_src
    }
    FileIO {
        id: food_file
        onError: console.log(msg + source)
    }
    Button {
        id: select
        x: 644
        y: 136
        width: 83
        height: 26
        text: "Select"

        onClicked: {
            food_file.setSource(restaurant_property.name + ".txt")
            var list = []
            var contents = food_file.read()
            var foods = contents.split("\n").filter(function(i) {return i !== ''})
            for (var j = 0; j < foods.length; j++) {
                var data = foods[j].split('.')
                var item = {
                    "food_name_txt" : data[0],
                    "category" : data[1],
                    "ingredients_list" : data[2],
                    "food_description" : data[3],
                    "image_src" : data[4] + ".jpg",
                    "price" : data[5]
                }
                list.push(item)
            }
            food_list.setList(list)
            swipeView.currentIndex = 2
        }
    }

    Label {
        id: restaurant_name
        x: 149
        y: 16
        width: 578
        height: 24
        text: name
    }

    Label {
        id: description
        x: 149
        y: 52
        width: 578
        height: 72
        text: description_txt
    }

    Label {
        id: rating
        x: 149
        y: 138
        width: 34
        height: 24
        text: "Rating"
    }

    Label {
        id: rating_number
        x: 189
        y: 138
        width: 40
        height: 24
        text: rating_number_dbl
    }
}
