import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components
import PartManagament

Item {
    width: 500
    height: 480
    Component {
        id: listDelegate
        Rectangle {
            property string part_id: model.part_id
            property string part_name: model.part_name
            property string unit: model.unit
            property string quantity: model.quantity
            property string date: model.date

            id: recListDelegate1
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
    
    ScrollView {
        id: scrollView
        anchors.fill: parent
        clip: true
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        contentHeight: column1.height
        contentWidth: column1.width

        Column {
            id: column1
            width: 800
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            ListView {
                id: listView
                width: recListHeader1.width
                height: 500
                anchors.top: recListHeader1.bottom
                anchors.topMargin: 0
                spacing: 2
                boundsBehavior: Flickable.StopAtBounds
                transformOrigin: Item.Center
                snapMode: ListView.SnapOneItem
                model: listModel1
                delegate: listDelegate
                // header: listHeader

                ListModel {
                    id: listModel1
                }
            }

            Rectangle {
                id: recListHeader1
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

    function handleUpdateList(partId, partName, unit, quantity, date) {
        console.log(partId)
        console.log(partName)
        console.log(unit)
        console.log(quantity)
        console.log(date)
        listModel1.append({
            "part_id": partId,
            "part_name": partName,
            "unit": unit,
            "quantity": quantity,
            "date": date
        });
    }

    Connections {
        target: myBackend
        onUpdateList: {
            // listModel.append({
            //     "part_id": partId1,
            //     "part_name": partName,
            //     "unit": unit,
            //     "quantity": quantity,
            //     "date": date,
            // })
            handleUpdateList(partId1, partName, unit, quantity, date);
        }
    }
}
