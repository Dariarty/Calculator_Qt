#ifndef CALCMODELCONTROLLER_H
#define CALCMODELCONTROLLER_H

#include <QDebug>
#include <QObject>

namespace calculator {

//Calculator Model Controller Class
class CalcModelController : public QObject
{
    Q_OBJECT
public:
    explicit CalcModelController(QObject *parent = nullptr);
    ~CalcModelController() = default;

    Q_INVOKABLE void digitPressed(const int &digit);
    Q_INVOKABLE void operationPressed(const QString &operation);
};

} // namespace calculator

#endif // CALCMODELCONTROLLER_H
