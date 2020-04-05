#ifndef GLWIDGET_H
#define GLWIDGET_H

#include <QMainWindow>
#include <QGLWidget>
#include <QTimer>
class GLWidget : public QGLWidget
{
    Q_OBJECT
private:
    QPoint lastPos;
public:
    int xrot,yrot,zrot;
    explicit GLWidget(QWidget *parent = 0);
    void paintGL();

protected:
    void initializeGL();
    void resizeGL(int w, int h);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);

public slots:
    void draw();
    void alwaysRotate();
signals:
    void setRotateSing(int);


};

#endif // GLWIDGET_H
