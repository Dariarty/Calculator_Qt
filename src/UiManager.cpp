#include "UiManager.h"

namespace calculator {

UiManager::UiManager(QObject *parent)
    : QObject(parent)
    , view_(new QQuickView())
{
    loadUi();
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
