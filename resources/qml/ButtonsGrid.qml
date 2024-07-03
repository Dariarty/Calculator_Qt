import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

import operationTypes 1.0

Grid{
    id: buttonGrid
    width: buttonsArea.width
    height: buttonsArea.height
    anchors.fill: parent
    columns: 4
    rows: 5
    spacing: 3
    anchors.margins: 4

    CalcButton{
        text: "C"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Clear)
        }
    }

    CalcButton{
        text: "del"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Backspace)
        }
    }

    CalcButton{
        text: "( )"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Bracket)
        }
    }

    CalcButton{
        text: "÷"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Division)
        }
    }

    DigitButton{
        value: 7
    }

    DigitButton{
        value: 8
    }

    DigitButton{
        value: 9
    }

    CalcButton{
        text: "×"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Multiplication)
        }
    }

    DigitButton{
        value: 4
    }

    DigitButton{
        value: 5
    }

    DigitButton{
        value: 6
    }

    CalcButton{
        text: "-"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Subtraction)
        }
    }

    DigitButton{
        value: 1
    }

    DigitButton{
        value: 2
    }

    DigitButton{
        value: 3
    }

    CalcButton{
        text: "+"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Addition)
        }
    }

    CalcButton{
        text: "+/-"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.SwitchSign)
        }
    }

    CalcButton{
        text: "0"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(0);
        }
    }

    CalcButton{
        text: "."
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.FloatPoint)
        }
    }

    CalcButton{
        text: "="
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Result)
        }
    }

}
