#ifndef GLWIDGET_H
#define GLWIDGET_H

#include <QMainWindow>
#include <QOpenGLWidget>
#include <QOpenGLFunctions>

#include <QtGui/QOpenGLContext>
#include <QtGui/QOpenGLPaintDevice>
#include <QtGui/QPainter>

#include <QTimer>

#include "gl.h"
// #include <GLFW/glfw3.h>

#include <cmath>
#include <iostream>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <cstdint>

#include <vecmath.h>

#include "starter1_util.h"
#include "parse.h"
#include "curve.h"
#include "surf.h"
#include "camera.h"
#include "vertexrecorder.h"

struct Recorders
    {
        VertexRecorder curve;
        VertexRecorder curveFrames;
        VertexRecorder surface;
        VertexRecorder surfaceNormals;
    };

    // This assignment uses a useful camera implementation

    // most curves are drawn with constant color, and no lighting
    static QOpenGLShaderProgram shader_program_color;
    static GLint program_color;
    // for surfaces, we apply a light+material shader
    static QOpenGLShaderProgram shader_program_light;
    static GLint program_light;

    // These are state variables for the UI
    static bool gMousePressed = false;
    static enum CurveMode
    {
        CURVE_MODE_NONE,
        CURVE_MODE_ACTIVE,
        CURVE_MODE_WITH_NORMALS
    };
    static enum SurfaceMode
    {
        SURFACE_MODE_NONE,
        SURFACE_MODE_ACTIVE,
        SURFACE_MODE_WITH_NORMALS
    };
    static int gPointMode = 1;

    // This detemines how big to draw the normals
    static const float gLineLen = 0.1f;

    // curve and surfaces vertices are recorded on application
    // startup and reused when drawing each frame.
    
    static Recorders *recorders;

    // These std::vectors store the control points, curves, and
    // surfaces that will end up being drawn. Other std::vectors
    // store the names for the curves and surfaces (as given by the files)
    static std::vector<std::vector<Vector3f>> gCtrlPoints;
    static std::vector<Curve> gCurves;
    static std::vector<std::string> gCurveNames;
    static std::vector<Surface> gSurfaces;
    static std::vector<std::string> gSurfaceNames;

class GLWidget : public QOpenGLWidget,protected QOpenGLFunctions
{
    Q_OBJECT
private:

    
public:
    int xrot, yrot, zrot;
    explicit GLWidget(QWidget *parent = 0,char * t= NULL);
    void paintGL();
    QPoint lastPos;
    Camera camera;
    bool shaded = true; // TODO add UI for this variable
    double depth;
    void loadObjects(int argc, char *argv[]);
    void updateMaterialUniforms(GLuint program);
    void updateLightUniforms(GLuint program);
    void drawSurface();
    void drawPoints();
    void recordVertices();
    void freeVertices();
    int gCurveMode = CURVE_MODE_ACTIVE;
    int gSurfaceMode = SURFACE_MODE_ACTIVE;


protected:
    void initializeGL();
    void resizeGL(int w, int h);
    void mousePressEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);

    void mouseMoveEvent(QMouseEvent *event);
    void drawAxis();
    void drawCurve();

    void sendSingal();

public slots:

    void draw();
signals:
    void setRotateSing(int);
};

#endif // GLWIDGET_H
