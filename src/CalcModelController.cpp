#include "CalcModelController.h"

namespace calculator {

CalcModelController::CalcModelController(QObject *parent)
    : QObject(parent)
    , cursorPos_(0)
    , screenText_("")
{}

//Update Cursor Position when changed by user
void CalcModelController::updateCursorPos(const int &newCursorPos)
{
    cursorPos_ = newCursorPos;
}

//Update Screen Text when changed bu user
void CalcModelController::updateScreenText(const QString &newText)
{
    screenText_ = newText;
}

//Digit Button pressed in GUI
void CalcModelController::digitPressed(const int &digit)
{
    screenText_.insert(cursorPos_, QString::number(digit));
    cursorPos_++;

    emit screenTextUpdated(screenText_, cursorPos_);
}

void CalcModelController::operationPressed(const QString &operation)
{
    qDebug() << "OPERATION PRESSED: " << operation;
}

} // namespace calculator
