import QtQuick 2.15
import QtQuick.Controls 2.12

Button {
    id: button

    property string color: "white"
    property string downColor: "#cfcfcf"

    font.pointSize: 25

    width: (parent.width - parent.spacing * 3) / 4
    height: (parent.height - parent.spacing * 4) / 5

    hoverEnabled: false

    background: Rectangle {
        color: button.down ? button.downColor : button.color
    }

    contentItem: Text{
        id: contentText
        font: button.font
        text: button.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
