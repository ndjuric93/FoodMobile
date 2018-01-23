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
    height: 300

    Image {
        x: 8
        y: 16
        width: 135
        height: 122
        source: image_src
    }
    FileIO {
        id: food_file
        onError: console.log(msg + source)
    }
    Button {
        id: select
        x: 478
        y: 224
        width: 249
        height: 60
        text: "Select"

        onClicked: {
            var mm =  {
                "Burrito" : "Burrito.Lunch.Beef Meat, Lettuce, Tomato, Tortilla.Authentic Mexican Burrito.Burrito_food.300rsd \nTaco.Lunch.Beef Meat, Lettuce, Tomato, Tortilla.Authentic Mexican Burrito with standard supplements.Taco_food.250rsd",
                "PingPong" : "Chinese Noodles.Side dish.Rice Noodles.Classic chinese noodles.chinese_noodles.300rsd\n Chicken with peanuts.Lunch.Chicken, Peanuts, Lettuce, Soya sauce.Beautiful mix of tastes in a single dish.Sweet_and_sour_food.250rsd",
                "PizzaPalace" : "Cappriciosa.Tomato Sauce, Mushrooms, Cheese, Ham.The pizza you heard so much about!.Cappriciosa_food.300rsd \nMargherita.Tomato Sauce, Cheese.Typical famous Neapolitan pizza.Margherita_food.250rsd",
                "WurstPlace" : "Bratwurst.Lunch.50% Veal, 50% Beef.Franconian long, thick and coarse sausage.Bratwurst_food.300rsd \nKnackwurst.Lunch.50% Pork, 50% Veal, Garlic.Standard American Knackwurst.Knackwurst_food.250rsd"
            }

            var list = []
            var contents = mm[restaurant_property.name]
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
        height: 50
        text: name
        font.pointSize: 20
    }

    Label {
        id: description
        x: 149
        y: 90
        width: 578
        height: 112
        text: description_txt
        font.pointSize: 12
    }

    Label {
        id: rating
        x: 16
        y: 157
        width: 34
        height: 24
        text: "Rating"
        font.pointSize: 12
    }

    Label {
        id: rating_number
        x: 16
        y: 224
        width: 40
        height: 24
        text: rating_number_dbl
        font.pointSize: 13
    }
}
