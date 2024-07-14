import QtQuick 2.15
import QtQuick.Controls 2.15
import FlowView
import QtQuick.Layouts
import QtQuick.Studio.Components
import PartManagament
// import UiBackend

Item {
    width: 425
    height: 300
    Component {
        id: listDelegate
        Rectangle {
            property string part_id: model.part_id
            property string part_name: model.part_name
            property string unit: model.unit
            property string quantity: model.quantity
            property string date: model.date

            id: recListDelegate
            width: 800
            height: 40
            color: "#e1e3e3"
            radius: 5
            anchors.left: parent.left
            anchors.leftMargin: 0
            Row {
                id: row
                anchors.fill: parent
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                Text {
                    id: textIDHeader
                    width: 100
                    text: part_id
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    font.capitalization: Font.AllUppercase
                    fontSizeMode: Text.FixedSize
                }

                ToolSeparator {
                    id: toolSeparator8
                    width: 3
                    anchors.left: textIDHeader.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    topPadding: 0
                    scale: 1
                    rightPadding: 1
                    padding: 1
                    leftPadding: 1
                    clip: false
                    bottomPadding: 0
                }

                Text {
                    id: textNameHeader
                    width: 150
                    text: part_name
                    anchors.left: toolSeparator8.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                }

                ToolSeparator {
                    id: toolSeparator9
                    width: 3
                    anchors.left: textNameHeader.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    topPadding: 0
                    rightPadding: 1
                    leftPadding: 1
                    bottomPadding: 0
                }

                Text {
                    id: textUnitHeader
                    width: 40
                    text: unit
                    anchors.left: toolSeparator9.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                }

                ToolSeparator {
                    id: toolSeparator10
                    width: 3
                    anchors.left: textUnitHeader.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    topPadding: 0
                    rightPadding: 1
                    padding: 1
                    leftPadding: 1
                    bottomPadding: 0
                }

                Text {
                    id: textQtyHeader
                    width: 40
                    text: quantity
                    anchors.left: toolSeparator10.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                ToolSeparator {
                    id: toolSeparator11
                    width: 3
                    anchors.left: textQtyHeader.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    topPadding: 0
                    rightPadding: 1
                    leftPadding: 1
                    bottomPadding: 0
                }

                Text {
                    id: textDateHeader
                    text: date
                    anchors.left: toolSeparator11.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }

    Flickable {
        id: flickable
        width: parent.width
        height: parent.height
        interactive: true
        boundsMovement: Flickable.FollowBoundsBehavior
        boundsBehavior: Flickable.OvershootBounds
        flickableDirection: Flickable.HorizontalFlick
        contentWidth: gridView.contentWidth
        contentHeight: gridView.contentHeight
        clip: true

        Column {
            id: column1
            width: parent.width
            height: parent.height
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            ListView {
                id: listView
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: recListHeader.bottom
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 5
                anchors.bottomMargin: 0
                spacing: 2
                boundsBehavior: Flickable.StopAtBounds
                transformOrigin: Item.Center
                snapMode: ListView.SnapOneItem
                model: listModel
                delegate: listDelegate
                // header: listHeader

                ListModel {
                    id: listModel
                }
            }

            Rectangle {
                id: recListHeader
                width: 800
                height: 40
                color: "#2196f3"
                radius: 5
                anchors.left: parent.left
                anchors.leftMargin: 0
                Row {
                    id: row
                    anchors.fill: parent
                    anchors.topMargin: 2
                    anchors.bottomMargin: 2
                    Text {
                        id: textIDHeader
                        width: 100
                        text: qsTr("ID")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        font.capitalization: Font.AllUppercase
                        fontSizeMode: Text.FixedSize
                    }

                    ToolSeparator {
                        id: toolSeparator8
                        width: 3
                        anchors.left: textIDHeader.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        topPadding: 0
                        scale: 1
                        rightPadding: 1
                        padding: 1
                        leftPadding: 1
                        clip: false
                        bottomPadding: 0
                    }

                    Text {
                        id: textNameHeader
                        width: 150
                        text: qsTr("Name")
                        anchors.left: toolSeparator8.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.capitalization: Font.AllUppercase
                    }

                    ToolSeparator {
                        id: toolSeparator9
                        width: 3
                        anchors.left: textNameHeader.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        topPadding: 0
                        rightPadding: 1
                        leftPadding: 1
                        bottomPadding: 0
                    }

                    Text {
                        id: textUnitHeader
                        width: 40
                        text: qsTr("Unit")
                        anchors.left: toolSeparator9.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.capitalization: Font.AllUppercase
                    }

                    ToolSeparator {
                        id: toolSeparator10
                        width: 3
                        anchors.left: textUnitHeader.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        topPadding: 0
                        rightPadding: 1
                        padding: 1
                        leftPadding: 1
                        bottomPadding: 0
                    }

                    Text {
                        id: textQtyHeader
                        width: 40
                        text: qsTr("Qty")
                        anchors.left: toolSeparator10.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    ToolSeparator {
                        id: toolSeparator11
                        width: 3
                        anchors.left: textQtyHeader.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        topPadding: 0
                        rightPadding: 1
                        leftPadding: 1
                        bottomPadding: 0
                    }

                    Text {
                        id: textDateHeader
                        text: qsTr("Date")
                        anchors.left: toolSeparator11.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }
    Connections {
        target: myBackend
        onUpdateList: {
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
