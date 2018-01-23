import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 1024
    height: 768
    font.capitalization: Font.AllUppercase
    title: "Login Page"
    spacing: -1

    property alias login_btn: login_btn

    property alias username_tf: username_tf
    Image {
        id: image
        x: 0
        y: -78
        width: 1024
        height: 846
        source: "Overeat-Greasy-Foods.jpg"
    }

    Rectangle {

        TextField {
            id: username_tf
            x: 128
            y: 104
            width: 310
            height: 40
            text: qsTr("Username")
            font.capitalization: Font.MixedCase
            z: 22
        }

        property alias password_tf: password_tf

        Label {
            id: username_lbl
            x: 15
            y: 111
            width: 107
            height: 27
            color: "#000000"
            text: qsTr("Username")
            font.capitalization: Font.MixedCase
            renderType: Text.QtRendering
            fontSizeMode: Text.FixedSize
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            font.pointSize: 15
            font.bold: false
            z: 17
        }

        TextField {
            id: password_tf
            x: 128
            y: 168
            width: 310
            height: 40
            font.capitalization: Font.MixedCase
            font.weight: Font.Normal
            z: 24
            visible: true
            echoMode: TextInput.Password
        }

        Label {
            id: password_lbl
            x: 15
            y: 176
            color: "#000000"
            text: qsTr("Password")
            font.capitalization: Font.MixedCase
            font.pointSize: 15
            z: 25
        }

        property alias wrong_credentials: wrong_credentials
        x: 258
        y: 180
        width: 508
        height: 331
        border.width: 5
        visible: true
        z: 21

        Label {
            id: wrong_credentials
            x: 128
            y: 283
            width: 310
            height: 29
            color: "#ff1b1b"
            text: qsTr("")
            font.bold: true
            font.pointSize: 15
            z: 26
        }

        Button {
            id: login_btn
            x: 128
            y: 232
            width: 310
            height: 30
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
            x: 15
            y: 8
            width: 478
            height: 90
            source: "food_ordering logo.png"
        }
    }
}
