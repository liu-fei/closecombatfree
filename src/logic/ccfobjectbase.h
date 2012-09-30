#ifndef CCFOBJECTBASE_H
#define CCFOBJECTBASE_H

#include <QtCore/QString>
#include <QtCore/QObject>
#include <QtCore/QVariant>
#include <QtQuick/QQuickItem>

/*
  Before you complain: yes, we know macros are the root of considerate amount
  of evil. Those few are extra useful, though, and make our code shiny all over
  the place. Take a look at what some parts of the code would look like without
  them. Once you do that, and then spend a while contemplating the universe,
  your life, this code, and everything, you can start complaining.

  Not that anyone will listen, anyway.
*/
#define set setProperty
#define get property
#define getReal(arg) property(arg).toReal()
#define getInt(arg) property(arg).toInt()
#define getString(arg) property(arg).toString()
#define getBool(arg) property(arg).toBool()

class CcfQmlBaseUnit;

class CcfObjectBase : public QQuickItem
{
    Q_OBJECT

public:
    explicit CcfObjectBase(QQuickItem *parent = 0);
    
    CcfQmlBaseUnit *ccfUnit(QObject *unitObject) const;
    QQuickItem *item(const QString &objectName) const;
    QQuickItem *item(QObject *object);
    QObject *child(const QString &objectName) const;
    bool invoke(QObject *obj, const char *member,
                    QGenericArgument val0 = QGenericArgument(0), QGenericArgument val1 = QGenericArgument(),
                    QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(),
                    QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(),
                    QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(),
                    QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument());
    QObjectList listReferenceToQList(const QQmlListReference &toConvert);
    QList<CcfQmlBaseUnit *> listReferenceToUnitList(const QQmlListReference &toConvert);
};

#endif // CCFOBJECTBASE_H