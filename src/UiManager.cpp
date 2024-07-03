#include "UiManager.h"

#include "CalcModelController.h"

namespace calculator {

UiManager::UiManager(QObject *parent)
    : QObject(parent)
    , view_(new QQuickView())
    , calcModel_(new CalcModelController(this))
{
    qmlRegister();

    loadUi();
}

void UiManager::qmlRegister()
{
    view_->engine()->rootContext()->setContextProperty("UiManager", this);
    view_->engine()->rootContext()->setContextProperty("CalcModel", calcModel_);

    qmlRegisterType<Operations>("operationTypes", 1, 0, "Operations");
}

void UiManager::loadUi()
{
    view_->setResizeMode(QQuickView::SizeRootObjectToView);

    view_->setWidth(kDefaultWidth);
    view_->setMinimumWidth(kDefaultWidth);
    view_->setHeight(kDefaultHeight);
    view_->setMinimumHeight(kDefaultHeight);

    view_->setSource(QUrl(kMainQmlName));
    view_->setTitle(kAppTitle);

    view_->show();
}

} // namespace calculator
