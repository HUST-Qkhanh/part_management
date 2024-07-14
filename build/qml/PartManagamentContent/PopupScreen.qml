import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.DesignEffects

Item {

    id: popupScreenItem
    width: 1020
    height: popupScreenItem.width * 3 / 4

    Rectangle {

        property string popupInfo: popupText

        id: rectangle
        color: "#723d3d3d"
        radius: 10
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            width: 500
            height: 200
            color: "#ffffff"
            radius: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text1
                width: 387
                height: 37
                text: qsTr("POPUP: This is popup notification")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            DesignEffect {
                effects: [
                    DesignDropShadow {
                    }
                ]
            }

            RoundButton {
                id: roundButton
                x: 397
                y: 140
                width: 95
                height: 52
                radius: 10
                text: "OK"
                onClicked: {
                    console.log("disable popup")
                    disablePopup();
                }
            }
        }
    }
    Connections {
        target: myBackend
        onPopupDisable: {
            listModel.append({
                "part_id": partId,
                "part_name": partName,
                "unit": unit,
                "quantity": quantity,
                "date": date
            })
        }
    }
}
