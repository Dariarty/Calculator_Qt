#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView *view = new QQuickView;

    view->setSource(QUrl("qrc:/qml/Calculator.qml"));

    view->setTitle("Calculator");

    view->setResizeMode(QQuickView::SizeRootObjectToView);

    view->setWidth(350);
    view->setMinimumWidth(350);

    view->setHeight(500);
    view->setMinimumHeight(500);

    view->show();

    return app.exec();
}
