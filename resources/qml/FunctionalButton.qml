import QtQuick 2.0

CalculatorButton {

    property string buttonFunction

    text: buttonFunction

    onReleased: {
        numField.forceActiveFocus()
        CalcModel.functionalButtonPressed(buttonFunction)
    }
}
