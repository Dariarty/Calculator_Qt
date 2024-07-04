import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

CalcButtonTemplate {
    property string operationName: ""

    onReleased:{
        numField.forceActiveFocus()
        CalcModel.operationPressed(operationName);
    }
}
