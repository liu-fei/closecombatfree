#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QDeclarativeView *viewer = new QDeclarativeView();

    QString pwd = a.applicationDirPath() + "/";
    viewer->rootContext()->setContextProperty("PWD", pwd);

    viewer->setSource(QUrl("base/main.qml"));
    viewer->setAttribute(Qt::WA_OpaquePaintEvent);
    viewer->setAttribute(Qt::WA_NoSystemBackground);
    viewer->viewport()->setAttribute(Qt::WA_OpaquePaintEvent);
    viewer->viewport()->setAttribute(Qt::WA_NoSystemBackground);

    viewer->show();
    return a.exec();
}
