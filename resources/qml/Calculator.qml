import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

Rectangle{
    id: root
    color: "transparent"

    Rectangle{
        id: screenArea
        color: "#dedede"
        anchors.top: root.top
        width: root.width
        height: root.height * 0.2

        TextInput{
            id: numField
            anchors{
                fill: parent
                centerIn: parent.Center
                margins: 5
            }
            onCursorVisibleChanged: if(!cursorVisible) cursorVisible = true
            font.pointSize: 35
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            height: parent.height
            width: parent.width
        }
    }

    Rectangle{
        id: buttonsArea
        color: "#d0d0d0"
        anchors.top: screenArea.bottom
        anchors.bottom: root.bottom
        width: root.width

        ButtonsGrid{
            id: buttonGrid
        }

    }

}
