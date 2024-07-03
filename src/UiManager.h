#ifndef UIMANAGER_H
#define UIMANAGER_H

#include <QObject>
#include <QQuickView>

namespace {
const QString kMainQmlName = "qrc:/qml/Calculator.qml";
const QString kAppTitle = "Calculator";
const int kDefaultWidth = 350;
const int kDefaultHeight = 500;
} // namespace

namespace calculator {

class UiManager : public QObject
{
public:
    UiManager(QObject *parent = NULL);
    ~UiManager() = default;

private:
    void loadUi();

    QQuickView *view_;
};

} // namespace calculator

#endif // UIMANAGER_H
