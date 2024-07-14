
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import PartManagament
import QtQuick.Studio.DesignEffects
import QtQuick.Studio.Components
import QtCharts

Rectangle {
    id: rectangle1
    width: 1020
    height: rectangle1.width * 3 / 4
    visible: true
    color: "#e1e3e3"

    rotation: 0

    signal importButtonPressed(string message)
    signal findButtonPressed(string message)
    signal clearButtonPressed

    Rectangle {
        id: rectangle3
        color: "#ffffff"
        radius: 10
        border.width: 0
        anchors.left: rectangle4.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        Column {
            id: importControl
            x: 24
            y: 80
            width: 356
            height: 409
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 40
            anchors.topMargin: 40
            spacing: 10

            Column {
                id: columnFind
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 0

                TextField {
                    id: partID3
                    height: 40
                    color: "#000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    transformOrigin: Item.Right
                    placeholderTextColor: "#000000"
                    baselineOffset: 0
                    activeFocusOnTab: true
                }

                Button {
                    id: button
                    width: 129
                    text: qsTr("Find")
                    anchors.horizontalCenter: parent.horizontalCenter
                    highlighted: false
                    flat: false
                    transformOrigin: Item.Center
                    onClicked: {
                        var inputData = partID3.text
                        var data = myBackend.splitString(inputData, ";")
                        if (data.length === 5) {
                            partID4.text = data[0]
                            partID5.text = data[1]
                            partID6.text = data[2]
                            partID7.text = data[3]
                            partID8.text = data[4]
                        } else {
                            console.error("Invalid input format")
                            loader.active = true
                        }
                    }
                }
            }

            Column {
                id: columnData
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: columnFind.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 20

                Row {
                    id: row1
                    height: 45
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    Text {
                        id: text4
                        text: qsTr("Part ID :")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 11
                        transformOrigin: Item.Left
                    }

                    TextField {
                        id: partID4
                        height: 40
                        color: "#000000"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 100
                        anchors.rightMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        transformOrigin: Item.Right
                        placeholderTextColor: "#000000"
                        baselineOffset: 0
                        activeFocusOnTab: true
                    }
                }

                Row {
                    id: row2
                    height: 45
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    Text {
                        id: text5
                        text: qsTr("Part Name :")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 11
                        transformOrigin: Item.Left
                    }

                    TextField {
                        id: partID5
                        height: 40
                        color: "#000000"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 100
                        anchors.rightMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        transformOrigin: Item.Right
                        placeholderTextColor: "#000000"
                        baselineOffset: 0
                        activeFocusOnTab: true
                    }
                }

                Row {
                    id: row3
                    height: 45
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    Text {
                        id: text6
                        text: qsTr("Unit :")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 11
                        transformOrigin: Item.Left
                    }

                    TextField {
                        id: partID6
                        height: 40
                        color: "#000000"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 100
                        anchors.rightMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        transformOrigin: Item.Right
                        placeholderTextColor: "#000000"
                        baselineOffset: 0
                        activeFocusOnTab: true
                    }
                }

                Row {
                    id: row4
                    height: 45
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    Text {
                        id: text7
                        text: qsTr("Quantity :")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 11
                        transformOrigin: Item.Left
                    }

                    TextField {
                        id: partID7
                        height: 40
                        color: "#000000"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 100
                        anchors.rightMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        transformOrigin: Item.Right
                        placeholderTextColor: "#000000"
                        baselineOffset: 0
                        activeFocusOnTab: true
                    }
                }

                Row {
                    id: row5
                    height: 45
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    Text {
                        id: text8
                        text: qsTr("Date :")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 11
                        transformOrigin: Item.Left
                    }

                    TextField {
                        id: partID8
                        height: 40
                        color: "#000000"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 100
                        anchors.rightMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        transformOrigin: Item.Right
                        placeholderTextColor: "#000000"
                        baselineOffset: 0
                        activeFocusOnTab: true
                    }
                }
            }

            Row {
                id: columnImport
                anchors.top: columnData.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Button {
                    id: button1
                    width: 143
                    height: 52
                    text: qsTr("Import")
                    clip: false
                    highlighted: false
                    flat: false
                    icon.cache: true
                    icon.color: "#e91e63"
                    anchors.verticalCenterOffset: 35
                    onClicked: {
                        myBackend.importData()
                        partID3.text = ""
                        partID4.text = ""
                        partID5.text = ""
                        partID6.text = ""
                        partID7.text = ""
                        partID8.text = ""
                    }
                }

                Button {
                    id: button2
                    width: 143
                    height: 52
                    text: qsTr("Clear")
                    anchors.verticalCenter: button1.verticalCenter
                    anchors.verticalCenterOffset: 0
                }
            }
        }

        Component {
            id: listHeader

            Rectangle {
                id: rectangle2
                // x: 258
                // y: 102
                width: listView.width
                height: 40
                color: "#1976d2"
                radius: 5

                Row {
                    id: row
                    anchors.fill: parent
                    anchors.topMargin: 2
                    anchors.bottomMargin: 2

                    Text {
                        id: text1
                        width: 100
                        text: qsTr("ID")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    ToolSeparator {
                        id: toolSeparator3
                        width: 3
                        anchors.left: text1.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        bottomPadding: 0
                        topPadding: 0
                        padding: 1
                        rightPadding: 1
                        leftPadding: 1
                        clip: false
                        scale: 1
                    }

                    Text {
                        id: text2
                        width: 150
                        text: qsTr("Name")
                        anchors.left: toolSeparator3.right
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
                        id: toolSeparator4
                        width: 3
                        anchors.left: text2.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        bottomPadding: 0
                        topPadding: 0
                        rightPadding: 1
                        leftPadding: 1
                    }

                    Text {
                        id: text3
                        width: 40
                        text: qsTr("Unit")
                        anchors.left: toolSeparator4.right
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
                        id: toolSeparator5
                        width: 3
                        anchors.left: text3.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        bottomPadding: 0
                        topPadding: 0
                        padding: 1
                        rightPadding: 1
                        leftPadding: 1
                    }

                    Text {
                        id: text9
                        width: 40
                        text: qsTr("Qty")
                        anchors.left: text3.right
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
                        id: toolSeparator6
                        width: 3
                        anchors.left: text9.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        bottomPadding: 0
                        topPadding: 0
                        rightPadding: 1
                        leftPadding: 1
                    }

                    Text {
                        id: text10
                        text: qsTr("Date")
                        anchors.left: toolSeparator6.right
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

        ScrollViewTest {
            id: scrollViewTest
            x: 409
            y: 40
            width: 457
            height: 480
        }
        states: [
            State {
                name: "State1"
            }
        ]
    }

    RectangleItem {
        id: rectangle4
        x: 0
        y: 20
        width: 120
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 10
        anchors.bottomMargin: 10
        fillColor: "#2196f3"
        strokeWidth: -1
        strokeStyle: 0
        bottomLeftRadius: 0
        topLeftRadius: 0
        adjustBorderRadius: true

        Column {
            id: column
            x: 10
            y: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.topMargin: 10
            anchors.bottomMargin: 10

            TabButton {
                id: tabButton3
                height: 100
                text: qsTr("Home")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                icon.height: 30
                icon.width: 30
                display: AbstractButton.TextUnderIcon
                font.pointSize: 8
                icon.source: "images/home_light.png"
            }

            ToolSeparator {
                id: toolSeparator1
                width: 80
                orientation: Qt.Horizontal
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TabButton {
                id: tabButton4
                height: 100
                text: qsTr("New")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                icon.height: 30
                icon.width: 30
                display: AbstractButton.TextUnderIcon
                icon.source: "add_square_light.svg"
            }

            ToolSeparator {
                id: toolSeparator
                width: 80
                anchors.horizontalCenter: parent.horizontalCenter
                orientation: Qt.Horizontal
            }

            TabButton {
                id: tabButton5
                height: 100
                text: qsTr("Export")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                icon.height: 30
                icon.width: 30
                display: AbstractButton.TextUnderIcon
                checked: false
                icon.source: "images/arhive_alt_export_light.svg"
            }

            ToolSeparator {
                id: toolSeparator2
                width: 80
                orientation: Qt.Horizontal
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        DesignEffect {
            effects: [
                DesignDropShadow {}
            ]
        }
    }

    Loader {
        id: loader
        x: 130
        y: 10
        anchors.fill: parent
        source: "PopupScreen.qml"
        onLoaded: {
            var item = loader.item;
            if (item) {
                // Connect the signal using the Connections element
                popupConnections.target = item;
            }
        }
    }

    Connections {
        id: popupConnections
        onDisablePopup: {
            console.log("close loader");
            loader.active = false;
        }
    }
}
