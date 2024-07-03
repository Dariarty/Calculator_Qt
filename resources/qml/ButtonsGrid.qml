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

    CalcButton{
        text: "7"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(7);
        }
    }

    CalcButton{
        text: "8"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(8);
        }
    }

    CalcButton{
        text: "9"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(9);
        }
    }

    CalcButton{
        text: "×"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Multiplication)
        }
    }

    CalcButton{
        text: "4"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(4);
        }
    }

    CalcButton{
        text: "5"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(5);
        }
    }

    CalcButton{
        text: "6"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(6);
        }
    }

    CalcButton{
        text: "-"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.operationPressed(Operations.Subtraction)
        }
    }

    CalcButton{
        text: "1"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(1);
        }
    }

    CalcButton{
        text: "2"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(2);
        }
    }

    CalcButton{
        text: "3"
        onClicked: {
            numField.forceActiveFocus()
            CalcModel.digitPressed(3);
        }
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
