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
    anchors.margins: 3

    CalculatorButton{
        text: "C"

        onReleased: {
            numField.forceActiveFocus()
            CalcModel.clearPressed()
        }
    }

    CalculatorButton{
        text: "del"
    }

    CalculatorButton{
        text: "( )"
    }

    CalculatorButton{
        text: "÷"
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

    CalculatorButton{
        text: "×"
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

    CalculatorButton{
        text: "-"
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

    CalculatorButton{
        text: "+"
    }

    CalculatorButton{
        text: "+/-"
    }

    DigitButton{
        value: 0
    }

    CalculatorButton{
        text: "."
    }

    CalculatorButton{
        text: "="
    }

}
