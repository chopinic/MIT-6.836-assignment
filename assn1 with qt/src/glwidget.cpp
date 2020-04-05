#include "glwidget.h"
#include <QtGui>
#include <QtOpenGL>
#include <QDebug>

double flag = 0;
using namespace std;
GLWidget::GLWidget(QWidget *parent, char *s)
{
    // setSurfaceType(QWindow::OpenGLSurface);
    char *t[20];
    if (s == NULL)
    {
        char filename[20] = "swp/wineglass.swp";
        t[1] = filename;
    }
    else
        t[1] = s;

    loadObjects(2, t);
    xrot = 0;
    yrot = 256;
    zrot = 256;
    depth = 10;
   
    // 不知道为何没用，只能把emit放在paintGL里
    // emit this->setRotateSing(0);

    
    
}

void GLWidget::initializeGL()
{

    // qDebug()<<"Init start!";
    QSize winSize = this->baseSize();
    this->resizeGL(winSize.height(),winSize.width());


    this->initializeOpenGLFunctions(); //这个init()函数至关重要，如果继承QOpenGlFunctions,必须使用这个初始化函数

    compileProgram(c_vertexshader, c_fragmentshader_light, shader_program_light);
    program_light = shader_program_light.programId();
    if (!program_light)
    {
        printf("NO program_light\n");
    }
    compileProgram(c_vertexshader, c_fragmentshader_color, shader_program_color);
    program_color = shader_program_color.programId();
    if (!program_color)
    {
        printf("NO program_light\n");
    }
    camera.SetDimensions(600, 600);
    camera.SetPerspective(50);
    camera.SetDistance(10);
    camera.SetCenter(Vector3f(0, 0, 0));

    recordVertices();

    glClearColor(0, 0, 0, 1);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    printOpenGLVersion();
    // qDebug()<<"Init done!";

}

void GLWidget::paintGL()
{
    emit this->setRotateSing(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glPushMatrix();
    if (gMousePressed)
    {
        drawAxis();
    }
    if (gCurveMode)
    {
        drawCurve();
    }
    if (gSurfaceMode)
    {
        drawSurface();
    }
    if (gPointMode)
    {
        drawPoints();
    }

    draw();
    glPopMatrix();

    update();
    // printf("now update\n");
}
void GLWidget::resizeGL(int w, int h)
{
    int side = qMin(w, h);
    camera.SetDimensions(w, h);
    camera.SetViewport(0, 0, w, h);
    camera.ApplyViewport();

}

void GLWidget::draw()
{
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glTranslatef(0, 0.0f, -10.0f); // Move Forward On The X Plane
    glRotatef(xrot, 1.0f, 0.0f, 0.0f);
    glRotatef(yrot, 0.0f, 1.0f, 0.0f);
    glRotatef(zrot, 0.0f, 0.0f, 1.0f);
    glColor3f(1, 0, 0);
    glBegin(GL_QUADS);
    glVertex3f(-1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, 1.0f, 0.0f);
    glVertex3f(-1.0f, 1.0f, 0.0f);
    glEnd();

    glColor3f(0, 1, 0);
    glRotatef(90, 1.0, 0.0, 0.0);
    glBegin(GL_QUADS);

    glVertex3f(-1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, 1.0f, 0.0f);
    glVertex3f(-1.0f, 1.0f, 0.0f);
    glEnd();

    glRotatef(90, 0.0, 1.0, 0.0);
    glColor3f(0, 1, 1);
    glBegin(GL_QUADS);

    glVertex3f(-1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, -1.0f, 0.0f);
    glVertex3f(1.0f, 1.0f, 0.0f);
    glVertex3f(-1.0f, 1.0f, 0.0f);
    glEnd();
}

void GLWidget::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton)
    {
        lastPos.setX(event->x());
        lastPos.setY(event->y());
        camera.MouseClick(Camera::LEFT, event->x(), event->y());
    }
    if (event->button() == Qt::RightButton)
    {
        camera.MouseClick(Camera::RIGHT, event->x(), event->y());
        lastPos.setX(event->x());
        
    }
    gMousePressed = true;
}
void GLWidget::mouseReleaseEvent(QMouseEvent *event)
{
    gMousePressed = true;
    camera.MouseRelease(event->x(), event->y());
    gMousePressed = false;
}
void GLWidget::mouseMoveEvent(QMouseEvent *event)
{

    if (!gMousePressed)
    {
        return;
    }
    // printf("%d %d\n",(int)event->x(), (int)event->y());
    // printf("%d %d\n",&xrot,&yrot);

    
    camera.MouseDrag((int)event->x(), (int)event->y());

    // 还未实现Slide控制旋转角度。camera的旋转矩阵没读懂。
    
    // Vector3f nowAngle = camera.getRotateAngle();
    // xrot = nowAngle[0] * 360;
    // yrot = nowAngle[1] * 360;
    // zrot = nowAngle[2] * 360;
    // printf("%d %d\n",&xrot,&yrot);
    // emit setRotateSing(0);
}

void GLWidget::loadObjects(int argc, char *argv[])
{
    if (argc < 2)
    {
        cerr << "usage: " << argv[0] << " SWPFILE [OBJPREFIX] " << endl;
        exit(0);
    }

    ifstream in(argv[1]);
    if (!in)
    {
        cerr << argv[1] << " not found\a" << endl;
        // exit(0);
    }

    cerr << endl
         << "*** loading and constructing curves and surfaces ***" << endl
         << endl;
    cout << "\tNote: This is not a required implement of cubic Bezier curve." << endl
         << "\t      Instead, it's n-degree Bezier curve." << endl
         << endl;

    if (!parseFile(in, gCtrlPoints,
                   gCurves, gCurveNames,
                   gSurfaces, gSurfaceNames))
    {
        cerr << "\aerror in file format\a" << endl;
        in.close();
        // exit(-1);
    }

    in.close();

    // This does OBJ file output
    if (argc > 2)
    {
        cerr << endl
             << "*** writing obj files ***" << endl;

        string prefix(argv[2]);

        for (int i = 0; i < (int)gSurfaceNames.size(); i++)
        {
            if (gSurfaceNames[i] != ".")
            {
                std::string filename =
                    prefix + string("_") + gSurfaceNames[i] + string(".obj");

                ofstream out(filename.c_str());

                if (!out)
                {
                    cerr << "\acould not open file " << filename << ", skipping" << endl;
                    out.close();
                    continue;
                }
                else
                {
                    outputObjFile(out, gSurfaces[i]);
                    cerr << "wrote " << filename << endl;
                }
            }
        }
        // recorders->curveFrames.clear();
        // recorders->curve.clear();        
        // recorders->surface.clear();
        // recorders->surfaceNormals.clear();

    }

    cerr << endl
         << "*** done ***" << endl;
}

void GLWidget::drawAxis()
{
    glUseProgram(program_color);
    camera.SetUniforms(program_color);

    const Vector3f DKRED(1.0f, 0.5f, 0.5f);
    const Vector3f DKGREEN(0.5f, 1.0f, 0.5f);
    const Vector3f DKBLUE(0.5f, 0.5f, 1.0f);
    const Vector3f GREY(0.5f, 0.5f, 0.5f);

    const Vector3f ORGN(0, 0, 0);
    const Vector3f AXISX(5, 0, 0);
    const Vector3f AXISY(0, 5, 0);
    const Vector3f AXISZ(0, 0, 5);

    VertexRecorder recorder;
    recorder.record_poscolor(ORGN, DKRED);
    recorder.record_poscolor(AXISX, DKRED);
    recorder.record_poscolor(ORGN, DKGREEN);
    recorder.record_poscolor(AXISY, DKGREEN);
    recorder.record_poscolor(ORGN, DKBLUE);
    recorder.record_poscolor(AXISZ, DKBLUE);

    recorder.record_poscolor(ORGN, GREY);
    recorder.record_poscolor(-AXISX, GREY);
    recorder.record_poscolor(ORGN, GREY);
    recorder.record_poscolor(-AXISY, GREY);
    recorder.record_poscolor(ORGN, GREY);
    recorder.record_poscolor(-AXISZ, GREY);

    glLineWidth(3);
    recorder.draw(GL_LINES);
}

void GLWidget::drawCurve()
{
    glUseProgram(program_color);
    camera.SetUniforms(program_color);

    glLineWidth(1);
    recorders->curve.draw(GL_LINES);
    if (gCurveMode == CURVE_MODE_WITH_NORMALS)
    {
        glLineWidth(1);
        recorders->curveFrames.draw(GL_LINES);
    }
}

void GLWidget::updateMaterialUniforms(GLuint program)
{
    GLfloat diffColor[] = {(float)xrot/256,(float)yrot/256,(float)zrot/256, 1};
    GLfloat specColor[] = {0.9f, 0.9f, 0.9f, 1};
    GLfloat shininess[] = {(float)depth};
    int loc = glGetUniformLocation(program, "diffColor");
    glUniform4fv(loc, 1, diffColor);
    loc = glGetUniformLocation(program, "specColor");
    glUniform4fv(loc, 1, specColor);
    loc = glGetUniformLocation(program, "shininess");
    glUniform1f(loc, shininess[0]);
}

void GLWidget::updateLightUniforms(GLuint program)
{
    GLfloat lightPos[] = {3.0f, 3.0f, 5.0f, 1.0f};
    int loc = glGetUniformLocation(program, "lightPos");
    glUniform4fv(loc, 1, lightPos);

    GLfloat lightDiff[] = {120.0f, 120.0f, 120.0f, 1.0f};
    loc = glGetUniformLocation(program, "lightDiff");
    glUniform4fv(loc, 1, lightDiff);
}

void GLWidget::drawSurface()
{
    if (shaded)
    {
        // DRAW SHADED SURFACE
        glUseProgram(program_light);
        // program_light.bind();
        camera.SetUniforms(program_light);
        updateMaterialUniforms(program_light);
        updateLightUniforms(program_light);

        // shade interior of polygons
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        // This tells openGL to *not* draw backwards-facing triangles.
        // This is more efficient, and in addition it will help you
        // make sure that your triangles are drawn in the right order.
        glEnable(GL_CULL_FACE);
        glCullFace(GL_BACK);
    }
    else
    {
        // DRAW SURFACE WIRE FRAME
        glUseProgram(program_color);
        camera.SetUniforms(program_color);

        // don't shade polygon interior
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        glLineWidth(1);
    }
    recorders->surface.draw(GL_TRIANGLES);

    // DRAW SURFACE NORMALS
    if (gSurfaceMode == SURFACE_MODE_WITH_NORMALS)
    {
        glLineWidth(1);
        glUseProgram(program_color);
        camera.SetUniforms(program_color);
        recorders->surfaceNormals.draw(GL_LINES);
    }
}

void GLWidget::drawPoints()
{
    glUseProgram(program_color);
    camera.SetUniforms(program_color);

    // Setup for point drawing
    glPointSize(4);
    glLineWidth(1);

    glDisable(GL_DEPTH_TEST);
    const Vector3f COLOR(1, 1, 0.0f);
    for (int i = 0; i < (int)gCtrlPoints.size(); i++)
    {
        // There are relatively few control points, so we can
        // get away with recording this for each frame.
        VertexRecorder recorder;
        for (int j = 0; j < (int)gCtrlPoints[i].size(); j++)
        {
            recorder.record_poscolor(gCtrlPoints[i][j], COLOR);
        }
        recorder.draw(GL_POINTS);
        recorder.draw(GL_LINE_STRIP);
    }
    glEnable(GL_DEPTH_TEST);
}

void GLWidget::recordVertices()
{
    // For complex models, it is too expensive to specify
    // all vertices each frame. We can make things more efficient
    // by recording the vertices on application startup, and then
    // drawing from the pre-recorded data structure.
    if(recorders != NULL)
        free(recorders);
    recorders = new Recorders();

    // CURVES
    for (int i = 0; i < (int)gCurves.size(); i++)
    {
        recordCurve(gCurves[i], &recorders->curve);
    }

    for (int i = 0; i < (int)gCurves.size(); i++)
    {
        recordCurveFrames(gCurves[i], &recorders->curveFrames, gLineLen);
    }

    // SURFACE
    for (int i = 0; i < (int)gSurfaces.size(); i++)
    {
        recordSurface(gSurfaces[i], &recorders->surface);
    }
    for (int i = 0; i < (int)gSurfaces.size(); i++)
    {
        recordNormals(gSurfaces[i], &recorders->surfaceNormals, gLineLen);
    }
}

void GLWidget::freeVertices()
{
    delete recorders;
    recorders = nullptr;
}
