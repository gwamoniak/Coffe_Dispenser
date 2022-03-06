#ifndef SYSTEMCONTROLLER_H
#define SYSTEMCONTROLLER_H

#include <QObject>

class SystemController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString drinkType READ drinkType WRITE setDrinkType NOTIFY drinkTypeChanged)
    Q_PROPERTY(QString drinkIconType READ drinkIconType WRITE setDrinkIconType NOTIFY drinkIconTypeChanged)
    Q_PROPERTY(DrinkSize drinkSize READ drinkSize WRITE setDrinkSize NOTIFY drinkSizeChanged)
public:
    explicit SystemController(QObject *parent = nullptr);


    enum DrinkSize {
        NOSIZE,
        SMALL,
        MEDIUM,
        LARGE
    };
    Q_ENUM( DrinkSize );

    QString drinkType() const;
    QString drinkIconType() const;

    DrinkSize drinkSize() const;
    Q_INVOKABLE void startOrder();

public slots:

    void setDrinkType(QString drinkType);
    void setDrinkIconType(QString drinkType);
    void setDrinkSize(DrinkSize drinkSize);

signals:

    void drinkTypeChanged(QString drinkType);
    void drinkIconTypeChanged(QString drinkType);
    void drinkSizeChanged(DrinkSize drinkSize);

private:
    QString m_drinkType;
    QString m_drinkIconType;
    DrinkSize m_drinkSize;


};

#endif // SYSTEMCONTROLLER_H
