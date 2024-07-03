import QtQuick 2.15
import QtQuick.Controls 2.12

Button {
    id: button

    font.pointSize: 25

    width: (parent.width - parent.spacing * 3) / 4
    height: (parent.height - parent.spacing * 4) / 5

    contentItem: Text{
        id: contentText
        font: button.font
        text: button.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
