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
    Q_INVOKABLE void digitPressed(const int &digit);
    Q_INVOKABLE void operationPressed(const QString &operation);

signals:
    //signal to programmatically update display
    void screenTextUpdated(const QString &newText, int newCursorPos);

private:
    int cursorPos_;
    QString screenText_;
};

} // namespace calculator

#endif // CALCMODELCONTROLLER_H
