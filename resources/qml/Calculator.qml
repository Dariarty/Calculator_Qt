import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

Rectangle{
    id: root
    color: "transparent"

    Connections{
        target: CalcModel

        function onScreenTextUpdated(newText, newCursorPos){
            numField.text = newText
            numField.cursorPosition = newCursorPos
        }
    }

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
                topMargin: 15
                bottomMargin: 15
                rightMargin: 6
            }
            onCursorVisibleChanged: if(!cursorVisible) cursorVisible = true
            font.pointSize: 35
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            height: parent.height
            width: parent.width
            onCursorPositionChanged: CalcModel.updateCursorPos(cursorPosition)
            onTextEdited: CalcModel.updateScreenText(text)
        }

        Rectangle{
            id: upperBorder
            anchors.top: parent.top
            width: root.width
            height: 10
            color: "#d0d0d0"
        }

        Rectangle{
            id: lowerBorder
            anchors.bottom: parent.bottom
            width: root.width
            height: 7
            color: "#d0d0d0"
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
