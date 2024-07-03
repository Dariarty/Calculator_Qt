#ifndef UIMANAGER_H
#define UIMANAGER_H

#include <QObject>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQuickView>
#include <QtQml>

#include "CalcModelController.h"

namespace {
const QString kMainQmlName = "qrc:/qml/Calculator.qml";
const QString kAppTitle = "Calculator";
const int kDefaultWidth = 350;
const int kDefaultHeight = 500;
} // namespace

namespace calculator {

class UiManager : public QObject
{
    Q_OBJECT
    Q_DISABLE_COPY(UiManager)

public:
    UiManager(QObject *parent = NULL);
    ~UiManager() = default;

private:
    void qmlRegister();
    void loadUi();

    QQuickView *view_;
    CalcModelController *calcModel_;
};

} // namespace calculator

#endif // UIMANAGER_H
