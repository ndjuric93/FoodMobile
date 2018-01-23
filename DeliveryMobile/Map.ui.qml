import QtQuick 2.10
import QtQuick.Controls 2.3
import QtLocation 5.3

Page {
    width: 1080
    height: 1920

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Map {
        id: map
        x: 0
        y: 0
        width: 1080
        height: 1867
        z: 4
        zoomLevel: (maximumZoomLevel - minimumZoomLevel) / 2
        center {
            // The Qt Company in Oslo
            latitude: 59.9485
            longitude: 10.7686
        }
    }
}
