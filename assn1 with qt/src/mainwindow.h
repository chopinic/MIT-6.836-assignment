#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QApplication>
#include <QAction>
#include <QtGui>
#include <QFileSystemModel>
#include "glwidget.h"
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
// signals:
//     void mouseUpdate(QMouseEvent *event);
    QPoint lastPos;
private slots:
    void xrotate(int);
    void yrotate(int);
    void zrotate(int);
    void setRotate(int);
    
    void on_shadeButton_clicked(bool checked);
    void on_swpFileList_doubleClicked(const QModelIndex &index);

    void on_depthSlide_valueChanged(int value);


    void on_comboBox_activated(int index);

private:
    Ui::MainWindow *ui;
    GLWidget *glWidget;

};

#endif // MAINWINDOW_H
