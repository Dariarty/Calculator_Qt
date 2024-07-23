import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

CalculatorButton {

    property int value: 0

    text: value

    onReleased:{
        numField.forceActiveFocus()
        CalcModel.digitButtonPressed(value);
    }

}
