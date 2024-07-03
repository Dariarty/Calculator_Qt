#ifndef CALCMODELCONTROLLER_H
#define CALCMODELCONTROLLER_H

#include <QDebug>
#include <QObject>

namespace calculator {

//Enums for calculator operations
class Operations : public QObject
{
    Q_OBJECT
public:
    enum OperationType {

        Addition = 0,
        Subtraction,
        Multiplication,
        Division,
        Result,
        Bracket,
        Backspace,
        SwitchSign,
        FloatPoint,
        Clear,
    };
    Q_ENUM(OperationType)
};

//Calculator Model Controller
class CalcModelController : public QObject
{
    Q_OBJECT
public:
    explicit CalcModelController(QObject *parent = nullptr);

    Q_INVOKABLE void digitPressed(const int &digit);
    Q_INVOKABLE void operationPressed(const Operations::OperationType &operation);
};

} // namespace calculator

#endif // CALCMODELCONTROLLER_H
