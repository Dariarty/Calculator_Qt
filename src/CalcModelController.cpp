#include "CalcModelController.h"

namespace calculator {

CalcModelController::CalcModelController(QObject *parent)
    : QObject(parent)
    , cursorPos_(0)
    , screenText_("")
    , engine_(new QJSEngine())
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
void CalcModelController::resultButtonPressed(){

    //Format text for evaluating
    QString formattedText_ = screenText_;

    //Replace operand symbols
    formattedText_.replace("÷","/");
    formattedText_.replace("×","*");

    //Evaluate expression
    QJSValue value = engine_->evaluate(formattedText_);

    if (value.isNumber()) {
        formattedText_ = QString::number(value.toNumber(), 'g', 10);

        if (formattedText_ != screenText_) {
            screenText_ = formattedText_;
            cursorPos_ = formattedText_.length();

            emit screenTextUpdated(screenText_, cursorPos_);
        }
    }
}


} // namespace calculator
