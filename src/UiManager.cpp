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
    view_->setIcon(QIcon(":/resources/calculator.png"));

    view_->showNormal();
    view_->setPosition((view_->screen()->geometry().width() - kDefaultWidth) / 2,
                       (view_->screen()->geometry().height() - kDefaultHeight) / 2);
}

} // namespace calculator
