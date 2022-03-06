#include "systemcontroller.h"
#include <QDebug>

SystemController::SystemController(QObject *parent)
    : QObject(parent)
    , m_drinkType("NONE")
    , m_drinkIconType("")
    , m_drinkSize( NOSIZE )
{

}


QString SystemController::drinkType() const
{
    return m_drinkType;
}

QString SystemController::drinkIconType() const
{
    return m_drinkIconType;
}

SystemController::DrinkSize SystemController::drinkSize() const
{
    return m_drinkSize;
}

void SystemController::startOrder()
{
    qDebug() << "Drink type: " << m_drinkType;

    QString debugOutDrinkSize;
    switch ( m_drinkSize )
    {
    case SMALL:
        debugOutDrinkSize = "Small";
        break;
    case MEDIUM:
        debugOutDrinkSize = "Medium";
        break;
    case LARGE:
        debugOutDrinkSize = "LARGE";
        break;
    case NOSIZE:
        debugOutDrinkSize = "NO SIZE?";
        break;
    }

    qDebug() << "Drink size: " << debugOutDrinkSize;

}


void SystemController::setDrinkType(QString drinkType)
{
    if (m_drinkType == drinkType)
        return;

    m_drinkType = drinkType;
    emit drinkTypeChanged(m_drinkType);
}

void SystemController::setDrinkIconType(QString drinkIconType)
{
    if (m_drinkIconType == drinkIconType)
        return;

    m_drinkIconType = drinkIconType;
    emit drinkIconTypeChanged(m_drinkIconType);
}


void SystemController::setDrinkSize(SystemController::DrinkSize drinkSize)
{
    if (m_drinkSize == drinkSize)
        return;

    m_drinkSize = drinkSize;
    emit drinkSizeChanged(m_drinkSize);
}
