#include "CalcModelController.h"

namespace calculator {

CalcModelController::CalcModelController(QObject *parent)
    : QObject(parent)
{}

void CalcModelController::digitPressed(const int &digit)
{
    qDebug() << "DIGIT PRESSED: " << digit;
}

void CalcModelController::operationPressed(const Operations::OperationType &operation)
{
    qDebug() << "OPERATION PRESSED: " << operation;
}

} // namespace calculator
