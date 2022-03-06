#include <QtTest>
#include <QCoreApplication>
#include "../controller/systemcontroller.h"

// add necessary includes here

class dispenserTest : public QObject
{
    Q_OBJECT

public:
    dispenserTest();
    ~dispenserTest();

private slots:
    void test_case1();

private:
    SystemController m_systemTest;
};

dispenserTest::dispenserTest()
{
    m_systemTest.setDrinkSize(m_systemTest.MEDIUM);
    m_systemTest.setDrinkType("BlackTea");

}

dispenserTest::~dispenserTest()
{

}

void dispenserTest::test_case1()
{

    QVERIFY(m_systemTest.drinkSize() == m_systemTest.MEDIUM );
    QVERIFY(m_systemTest.drinkType() == "BlackTea" );
}

QTEST_MAIN(dispenserTest)

#include "tst_dispensertest.moc"
