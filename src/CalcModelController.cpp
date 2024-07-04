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
void CalcModelController::digitButtonPressed(const int &digit)
{
    screenText_.insert(cursorPos_, QString::number(digit));
    cursorPos_++;

    emit screenTextUpdated(screenText_, cursorPos_);
}

//Functional Button Pressed in GUI
void CalcModelController::functionalButtonPressed(const QString &function)
{
    screenText_.insert(cursorPos_, function);
    cursorPos_+=function.length();

    emit screenTextUpdated(screenText_, cursorPos_);
}

//Clear button Pressed in GUI
void CalcModelController::clearButtonPressed()
{
    screenText_ = "";
    cursorPos_ = 0;

    emit screenTextUpdated(screenText_, cursorPos_);
}

//Result button Pressed in GUI
void CalcModelController::resultButtonPressed()
{
    //PLACEHOLDER
    screenText_ = "ANSWER";
    cursorPos_ = 0;

    emit screenTextUpdated(screenText_, cursorPos_);
}

} // namespace calculator
