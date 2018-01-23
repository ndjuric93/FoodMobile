import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 1080
    height: 1920
    font.capitalization: Font.AllUppercase
    title: "Login Page"
    spacing: -1

    property alias login_btn: login_btn

    property alias username_tf: username_tf
    Image {
        id: image
        x: 0
        y: 0
        width: 1080
        height: 890
        source: "Overeat-Greasy-Foods.jpg"
    }

    Rectangle {

        TextField {
            id: username_tf
            x: 147
            y: 323
            width: 600
            height: 92
            text: qsTr("")
            font.pointSize: 10
            font.capitalization: Font.MixedCase
            z: 22
        }

        property alias password_tf: password_tf

        Label {
            id: username_lbl
            x: 142
            y: 227
            width: 222
            height: 56
            color: "#000000"
            text: qsTr("Username")
            font.capitalization: Font.MixedCase
            renderType: Text.QtRendering
            fontSizeMode: Text.FixedSize
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            font.pointSize: 30
            font.bold: false
            z: 17
        }

                TextField {
            id: password_tf
            x: 142
            y: 557
            width: 600
            height: 60
            font.pointSize: 10
            font.capitalization: Font.MixedCase
            font.weight: Font.Normal
            z: 24
            visible: true
            echoMode: TextInput.Password
        }

        Label {
            id: password_lbl
            x: 142
            y: 471
            width: 273
            height: 62
            color: "#000000"
            text: qsTr("Password")
            font.capitalization: Font.MixedCase
            font.pointSize: 30
            z: 25
        }

        property alias wrong_credentials: wrong_credentials
        x: 110
        y: 464
        width: 860
        height: 968
        border.width: 5
        visible: true
        z: 21

        Label {
            id: wrong_credentials
            x: 130
            y: 798
            width: 608
            height: 53
            color: "#ff1b1b"
            text: qsTr("")
            font.bold: true
            font.pointSize: 30
            z: 26
        }

        Button {
            id: login_btn
            x: 130
            y: 733
            width: 600
            height: 41
            text: "Login"
            focusPolicy: Qt.ClickFocus
            z: 22
            checkable: false
            checked: false
            autoExclusive: false
            spacing: 5
        }

        Image {
            id: image1
            x: 142
            y: 15
            width: 610
            height: 145
            source: "food_ordering logo.png"
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
