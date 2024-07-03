import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

Grid{
    id: buttonGrid
    width: buttonsArea.width
    height: buttonsArea.height
    anchors.fill: parent
    columns: 4
    rows: 5
    spacing: 3
    anchors.margins: 4

    OperationButton{
        text: "C"
        operationName: "clear"
    }

    OperationButton{
        text: "del"
        operationName: "del"
    }

    OperationButton{
        text: "( )"
        operationName: "bracket"
    }

    OperationButton{
        text: "÷"
        operationName: "divide"
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

    OperationButton{
        text: "×"
        operationName: "multiply"
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

    OperationButton{
        text: "-"
        operationName: "subtract"
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

    OperationButton{
        text: "+"
        operationName: "add"
    }

    OperationButton{
        text: "+/-"
        operationName: "switch_sign"
    }

    DigitButton{
        value: 0
    }

    OperationButton{
        text: "."
        operationName: "float_point"
    }

    OperationButton{
        text: "="
        operationName: "result"
    }

}
