#include "CalcModelController.h"

namespace calculator {

CalcModelController::CalcModelController(QObject *parent)
    : QObject(parent)
{}

void CalcModelController::digitPressed(const int &digit)
{
    Q_UNUSED(digit)
}

void CalcModelController::operationPressed(const Operations::OperationType &operation)
{
    Q_UNUSED(operation)
}

} // namespace calculator
