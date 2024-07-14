import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 640
    height: 480
    color: "lightgray"

    Button {
        id: openPopupButton
        text: qsTr("Open Popup")
        anchors.centerIn: parent
        onClicked: popup.open()
    }

    Popup {
        id: popup
        width: 300
        height: 200
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        modal: true

        Rectangle {
            width: parent.width
            height: parent.height
            color: "white"
            border.color: "black"

            Column {
                spacing: 10
                anchors.centerIn: parent

                Text {
                    text: qsTr("This is a popup view")
                }

                Button {
                    text: qsTr("Close")
                    onClicked: popup.close()
                }
            }
        }
    }
}
