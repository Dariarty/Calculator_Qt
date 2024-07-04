import QtQuick 2.0

CalculatorButton {

    property string functionString

    text: functionString

    onReleased: {
        numField.forceActiveFocus()
        CalcModel.functionPressed(functionString)
    }
}
