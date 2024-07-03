import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

CalcButtonTemplate {
    property int value: 0

    text: value

    onClicked:{
        numField.forceActiveFocus()
        CalcModel.digitPressed(value);
    }
}
