/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QScrollArea>
#include <QtWidgets/QSlider>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QScrollArea *openglArea;
    QWidget *scrollAreaWidgetContents;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QSlider *xrotSlide;
    QSlider *yrotSlide;
    QSlider *zrotSlide;
    QMenuBar *mswpFileList QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(719, 539);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        openglArea = new QScrollArea(centralWidget);
        openglArea->setObjectName(QStringLiteral("openglArea"));
        openglArea->setGeometry(QRect(10, 10, 481, 461));
        openglArea->setMinimumSize(QSize(20, 20));
        openglArea->setMaximumSize(QSize(1000, 1000));
        openglArea->setWidgetResizable(true);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QStringLiteral("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 479, 459));
        openglArea->setWidget(scrollAreaWidgetContents);
        verticalLayoutWidget = new QWidget(centralWidget);
        verticalLayoutWidget->setObjectName(QStringLiteral("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(500, 20, 211, 131));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        xrotSlide = new QSlider(verticalLayoutWidget);
        xrotSlide->setObjectName(QStringLiteral("xrotSlide"));
        xrotSlide->setMaximum(359);
        xrotSlide->setOrientation(Qt::Horizontal);

        verticalLayout->addWidget(xrotSlide);

        yrotSlide = new QSlider(verticalLayoutWidget);
        yrotSlide->setObjectName(QStringLiteral("yrotSlide"));
        yrotSlide->setMaximum(359);
        yrotSlide->setOrientation(Qt::Horizontal);

        verticalLayout->addWidget(yrotSlide);

        zrotSlide = new QSlider(verticalLayoutWidget);
        zrotSlide->setObjectName(QStringLiteral("zrotSlide"));
        zrotSlide->setMaximum(359);
        zrotSlide->setOrientation(Qt::Horizontal);

        verticalLayout->addWidget(zrotSlide);

        MainWindow->setCentralWidget(centralWidget);
        openglArea->raise();
        verticalLayoutWidget->raise();
        xrotSlide->raise();
        menuBar = new QMenuBar(MainWindow);
        swpFileListtObjectName(QStringLiteral("menuBar"));
        swpFileListtGeometry(QRect(0, 0, 719, 22));
        swpFileList>setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
