#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

#include "UiManager.h"

int main(int argc, char *argv[])
{
    int exitCode = -111;

    QGuiApplication app(argc, argv);

    calculator::UiManager uiManager;

    exitCode = app.exec();

    return exitCode;
}
