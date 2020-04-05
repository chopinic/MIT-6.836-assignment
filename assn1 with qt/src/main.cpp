#include "mainwindow.h"
#include <QApplication>
#include <QDebug>
#include <QSurfaceFormat>

int main(int argc, char *argv[])
{
    // qDebug()<<("Hello world");
    QSurfaceFormat format;
        format.setMajorVersion( 3 );
        format.setMinorVersion( 3 );
        format.setProfile(QSurfaceFormat::CoreProfile);
        QSurfaceFormat::setDefaultFormat(format);
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
