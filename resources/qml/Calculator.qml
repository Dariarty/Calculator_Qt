import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

import operationTypes 1.0

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
            font.pointSize: 40
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            height: parent.height
            width: parent.width
            onFocusChanged: focus = true
        }
    }

    Rectangle{
        id: buttonsArea
        color: "#e0e0e0"
        anchors.top: screenArea.bottom
        anchors.bottom: root.bottom
        width: root.width

        Grid{
            id: buttonGrid
            width: buttonsArea.width
            height: buttonsArea.height
            anchors.fill: parent
            columns: 4
            rows: 5
            spacing: 2
            anchors.margins: 2

            CalcButton{
                text: "C"
                onClicked: CalcModel.operationPressed(Operations.Clear)
            }

            CalcButton{
                id: delButton
                text: "del"
                onClicked: CalcModel.operationPressed(Operations.Backspace)
            }

            CalcButton{
                id: bracketButton
                text: "( )"
                onClicked: CalcModel.operationPressed(Operations.Bracket)
            }

            CalcButton{
                id: divideButton
                text: "÷"
                onClicked: CalcModel.operationPressed(Operations.Division)
            }

            CalcButton{
                id: digit7Button
                text: "7"
                onClicked: CalcModel.digitPressed(7);
            }

            CalcButton{
                id: digit8Button
                text: "8"
                onClicked: CalcModel.digitPressed(8);
            }

            CalcButton{
                id: digit9Button
                text: "9"
                onClicked: CalcModel.digitPressed(9);
            }

            CalcButton{
                id: multiplyButton
                text: "×"
                onClicked: CalcModel.operationPressed(Operations.Multiplication)
            }

            CalcButton{
                id: digit4Button
                text: "4"
                onClicked: CalcModel.digitPressed(4);
            }

            CalcButton{
                id: digit5Button
                text: "5"
                onClicked: CalcModel.digitPressed(5);
            }

            CalcButton{
                id: digit6Button
                text: "6"
                onClicked: CalcModel.digitPressed(6);
            }

            CalcButton{
                id: subtractButton
                text: "-"
                onClicked: CalcModel.operationPressed(Operations.Subtraction)
            }

            CalcButton{
                id: digit1Button
                text: "1"
                onClicked: CalcModel.digitPressed(1);
            }

            CalcButton{
                id: digit2Button
                text: "2"
                onClicked: CalcModel.digitPressed(2);
            }

            CalcButton{
                id: digit3Button
                text: "3"
                onClicked: CalcModel.digitPressed(3);
            }

            CalcButton{
                id: addButton
                text: "+"
                onClicked: CalcModel.operationPressed(Operations.Addition)
            }

            CalcButton{
                id: switchPolarityButton
                text: "+/-"
                onClicked: CalcModel.operationPressed(Operations.SwitchSign)
            }

            CalcButton{
                id: digit0Button
                text: "0"
                onClicked: CalcModel.digitPressed(0);
            }

            CalcButton{
                id: floatPointButton
                text: "."
                onClicked: CalcModel.operationPressed(Operations.FloatPoint)
            }

            CalcButton{
                id: resultButton
                text: "="
                onClicked: CalcModel.operationPressed(Operations.Result)
            }

        }

    }

}
