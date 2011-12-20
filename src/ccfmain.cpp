#include "ccfmain.h"

CcfMain::CcfMain(QWidget *parent) :
    QDeclarativeView(parent), CcfError()
{
    initConfiguration();
    rootContext()->setContextObject(configuration);

    setResizeMode(QDeclarativeView::SizeRootObjectToView);
    setAttribute(Qt::WA_OpaquePaintEvent);
    setAttribute(Qt::WA_NoSystemBackground);
    viewport()->setAttribute(Qt::WA_OpaquePaintEvent);
    viewport()->setAttribute(Qt::WA_NoSystemBackground);
    connect(this, SIGNAL(sceneResized(QSize)), configuration, SLOT(windowResized(QSize)));
    connect(configuration, SIGNAL(sizeModifiedInGame(int,int)), this, SLOT(forceViewportResize(int,int)));
    connect(engine(), SIGNAL(quit()), this, SLOT(quit()));
    connect(configuration, SIGNAL(configMaximise()), this, SLOT(showMaximized()));
    connect(configuration, SIGNAL(configDemaximise()), this, SLOT(showNormal()));
}

bool CcfMain::isConfigMaximised()
{
    return configuration->configMaximised();
}

void CcfMain::resizeView(QSize newSize)
{
    configuration->windowResized(newSize);
}

void CcfMain::quit()
{
    configuration->saveConfig();
    if (configuration->isErrorState()) {
        qWarning(configuration->errorMessage().toLocal8Bit());
    }

    delete configuration;
    qApp->quit();
}

void CcfMain::forceViewportResize(int width, int height)
{
    setGeometry(x(), y(), width, height);
}

bool CcfMain::initConfiguration()
{
    configuration = new CcfConfig("config", this);
    if (configuration->isErrorState()) {
        printf("Error while reading configuration file! Message: "
               + configuration->errorMessage().toLocal8Bit() + "\n");
        printf("Loading default configuration... ");
        configuration = new CcfConfig("config_default", this);

        if (configuration->isErrorState()) {
            printf("ERROR: " + configuration->errorMessage().toLocal8Bit() + "\n");
            return false;
        } else {
            printf("OK\n");
            return true;
        }
    }
    return true;
}
