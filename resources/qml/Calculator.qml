import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12

Rectangle{
    id: root
    color: "transparent"

    Rectangle{
        id: screenArea
        color: "#dedede"
        anchors.top: root.top
        width: root.width
        height: root.height * 0.2

        TextInput{
            id: numField
            anchors{
                fill: parent
                centerIn: parent.Center
                bottomMargin: 5
            }
            font.pointSize: 40
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            height: parent.height
            width: parent.width
        }
    }

    Rectangle{
        id: buttonsArea
        color: "#e0e0e0"
        anchors.top: screenArea.bottom
        anchors.bottom: root.bottom
        width: root.width

        Grid{
            id: buttonGrid
            width: buttonsArea.width
            height: buttonsArea.height
            anchors.fill: parent
            columns: 4
            rows: 5
            spacing: 2
            anchors.margins: 2

            CalcButton{
                text: "C"
            }

            CalcButton{
                id: delButton
                text: "del"
            }

            CalcButton{
                id: bracketButton
                text: "( )"
            }

            CalcButton{
                id: divideButton
                text: "÷"
            }

            CalcButton{
                id: digit7Button
                text: "7"
            }

            CalcButton{
                id: digit8Button
                text: "8"
            }

            CalcButton{
                id: digit9Button
                text: "9"
            }

            CalcButton{
                id: multiplyButton
                text: "×"
            }

            CalcButton{
                id: digit4Button
                text: "4"
            }

            CalcButton{
                id: digit5Button
                text: "5"
            }

            CalcButton{
                id: digit6Button
                text: "6"
            }

            CalcButton{
                id: subtractButton
                text: "-"
            }

            CalcButton{
                id: digit1Button
                text: "1"
            }

            CalcButton{
                id: digit2Button
                text: "2"
            }

            CalcButton{
                id: digit3Button
                text: "3"
            }

            CalcButton{
                id: addButton
                text: "+"
            }

            CalcButton{
                id: switchPolarityButton
                text: "+/-"
            }

            CalcButton{
                id: digit0Button
                text: "0"
            }

            CalcButton{
                id: floatPointButton
                text: "."
            }

            CalcButton{
                id: resultButton
                text: "="
            }

        }

    }

}
