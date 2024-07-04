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

        content.color: "white"
        color: "#ff3838"
        downColor: "#b81212"
        hoverColor: "#ff7070"
    }

    FunctionalButton{
        functionString: "("
    }

    FunctionalButton{
        functionString: ")"
    }

    FunctionalButton{
        functionString: "÷"
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

    FunctionalButton{
        functionString: "×"
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

    FunctionalButton{
        functionString: "-"
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

    FunctionalButton{
        functionString: "+"
    }

    FunctionalButton{
        functionString: "%"
    }

    DigitButton{
        value: 0
    }

    FunctionalButton{
        functionString: "."
    }

    CalculatorButton{
        text: "="

        onReleased: {
            numField.forceActiveFocus()
            CalcModel.resultPressed()
        }

        content.color: "white"
        color: "#3dba42"
        downColor: "#14c919"
        hoverColor: "#75d178"

    }

}
