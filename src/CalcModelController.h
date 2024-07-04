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

    //Screen Updates from QML
    Q_INVOKABLE void updateCursorPos(const int &newCursorPos);
    Q_INVOKABLE void updateScreenText(const QString &newText);

    //Button Presses from QML
    Q_INVOKABLE void digitButtonPressed(const int &digit);
    Q_INVOKABLE void functionalButtonPressed(const QString &function);
    Q_INVOKABLE void clearButtonPressed();
    Q_INVOKABLE void resultButtonPressed();

signals:
    //signal to update display
    void screenTextUpdated(const QString &newText, const int &newCursorPos);

    //signal to evaluate formatted string
    void evaluateExpression(const QString &mathExpression);

private:
    int cursorPos_;
    QString screenText_;
};

} // namespace calculator

#endif // CALCMODELCONTROLLER_H
