#include  "mainFunctions.h"
using namespace std;




void keyCallbacka(GLFWwindow* window, int key,
    int scancode, int action, int mods)
{
    if (action == GLFW_RELEASE) { // only handle PRESS and REPEAT
        return;
    }

    // Special keys (arrows, CTRL, ...) are documented
    // here: http://www.glfw.org/docs/latest/group__keys.html
    switch (key) {
    case GLFW_KEY_ESCAPE: // Escape key
        exit(0);
        break;
    case ' ':
    {
        Matrix4f eye = Matrix4f::identity();
        camera.SetRotation(eye);
        camera.SetCenter(Vector3f(0, 0, 0));
        break;
    }
    case 'c':
    case 'C':
        gCurveMode = (gCurveMode + 1) % 3;
        break;
    case 's':
    case 'S':
        gSurfaceMode = (gSurfaceMode + 1) % 3;
        break;
    case 'p':
    case 'P':
        gPointMode = (gPointMode + 1) % 2;
        break;
    default:
        cout << "Unhandled key press " << key << "." << endl;
    }
}

 void mouseCallbacka(GLFWwindow* window, int button, int action, int mods) {
    double xd, yd;
    glfwGetCursorPos(window, &xd, &yd);
    int x = (int)xd;
    int y = (int)yd;

    int lstate = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT);
    int rstate = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_RIGHT);
    int mstate = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_MIDDLE);
    if (lstate == GLFW_PRESS) {
        gMousePressed = true;
        camera.MouseClick(Camera::LEFT, x, y);
    } else if (rstate == GLFW_PRESS) {
        gMousePressed = true;
        camera.MouseClick(Camera::RIGHT, x, y);
    } else if (mstate == GLFW_PRESS) {
        gMousePressed = true;
        camera.MouseClick(Camera::MIDDLE, x, y);
    } else {
        gMousePressed = true;
        camera.MouseRelease(x, y);
        gMousePressed = false;
    }
}

 void motionCallbacka(GLFWwindow* window, double x, double y)
{
    if (!gMousePressed) {
        return;
    }
    camera.MouseDrag((int)x, (int)y);
}

void setViewporta(GLFWwindow* window)
{
    int w, h;
    glfwGetFramebufferSize(window, &w, &h);

    camera.SetDimensions(w, h);
    camera.SetViewport(0, 0, w, h);
    camera.ApplyViewport();
}

void drawAxisa()
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

void drawCurvea()
{
    glUseProgram(program_color);
    camera.SetUniforms(program_color);

    glLineWidth(1);
    recorders->curve.draw(GL_LINES);
    if (gCurveMode == CURVE_MODE_WITH_NORMALS) {
        glLineWidth(1);
        recorders->curveFrames.draw(GL_LINES);
    }
}

void updateMaterialUniformsa(GLuint program)
{
    GLfloat diffColor[] = { 1.0f, 0.4f, 0.4f, 1 };
    GLfloat specColor[] = { 0.9f, 0.9f, 0.9f, 1 };
    GLfloat shininess[] = { 20.0f };
    int loc = glGetUniformLocation(program, "diffColor");
    glUniform4fv(loc, 1, diffColor);
    loc = glGetUniformLocation(program, "specColor");
    glUniform4fv(loc, 1, specColor);
    loc = glGetUniformLocation(program, "shininess");
    glUniform1f(loc, shininess[0]);
}

void updateLightUniformsa(GLuint program)
{
    GLfloat lightPos[] = { 3.0f, 3.0f, 5.0f, 1.0f };
    int loc = glGetUniformLocation(program, "lightPos");
    glUniform4fv(loc, 1, lightPos);

    GLfloat lightDiff[] = { 120.0f, 120.0f, 120.0f, 1.0f };
    loc = glGetUniformLocation(program, "lightDiff");
    glUniform4fv(loc, 1, lightDiff);
}

void drawSurfacea()
{
    const bool shaded = true; // TODO add UI for this variable
    if (shaded) {
        // DRAW SHADED SURFACE
        glUseProgram(program_light);
        camera.SetUniforms(program_light);
        updateMaterialUniformsa(program_light);
        updateLightUniformsa(program_light);


        // shade interior of polygons
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        // This tells openGL to *not* draw backwards-facing triangles.
        // This is more efficient, and in addition it will help you
        // make sure that your triangles are drawn in the right order.
        glEnable(GL_CULL_FACE);
        glCullFace(GL_BACK);
    } else {
        // DRAW SURFACE WIRE FRAME
        glUseProgram(program_color);
        camera.SetUniforms(program_color);

        // don't shade polygon interior
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        glLineWidth(1);
    }
    recorders->surface.draw(GL_TRIANGLES);

    // DRAW SURFACE NORMALS
    if (gSurfaceMode == SURFACE_MODE_WITH_NORMALS) {
        glLineWidth(1);
        glUseProgram(program_color);
        camera.SetUniforms(program_color);
        recorders->surfaceNormals.draw(GL_LINES);
    }
}

void drawPointsa()
{
    glUseProgram(program_color);
    camera.SetUniforms(program_color);

    // Setup for point drawing
    glPointSize(4);
    glLineWidth(1);

    glDisable(GL_DEPTH_TEST);
    const Vector3f COLOR(1, 1, 0.0f);
    for (int i = 0; i < (int)gCtrlPoints.size(); i++) {
        // There are relatively few control points, so we can
        // get away with recording this for each frame.
        VertexRecorder recorder;
        for (int j = 0; j < (int)gCtrlPoints[i].size(); j++) {
            recorder.record_poscolor(gCtrlPoints[i][j], COLOR);
        }
        recorder.draw(GL_POINTS);
        recorder.draw(GL_LINE_STRIP);
    }
    glEnable(GL_DEPTH_TEST);
}

void initRenderinga()
{
    // Clear to black
    glClearColor(0, 0, 0, 1);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

// Load in objects from standard input into the global variables: 
// gCtrlPoints, gCurves, gCurveNames, gSurfaces, gSurfaceNames.  If
// loading fails, this will exit the program.
void loadObjectsa(int argc, char *argv[])
{
    if (argc < 2) {
        cerr << "usage: " << argv[0] << " SWPFILE [OBJPREFIX] " << endl;
        exit(0);
    }

    ifstream in(argv[1]);
    if (!in) {
        cerr << argv[1] << " not found\a" << endl;
        exit(0);
    }


    cerr << endl << "*** loading and constructing curves and surfaces ***" << endl<<endl;
    cout<<"\tNote: This is not a required implement of cubic Bezier curve."<<endl
    <<"\t      Instead, it's n-degree Bezier curve."<<endl<<endl;

    if (!parseFile(in, gCtrlPoints,
        gCurves, gCurveNames,
        gSurfaces, gSurfaceNames)) {
        cerr << "\aerror in file format\a" << endl;
        in.close();
        exit(-1);
    }

    in.close();

    // This does OBJ file output
    if (argc > 2) {
        cerr << endl << "*** writing obj files ***" << endl;

        string prefix(argv[2]);

        for (int i = 0; i < (int)gSurfaceNames.size(); i++) {
            if (gSurfaceNames[i] != ".") {
                string filename =
                    prefix + string("_")
                    + gSurfaceNames[i]
                    + string(".obj");

                ofstream out(filename.c_str());

                if (!out) {
                    cerr << "\acould not open file " << filename << ", skipping" << endl;
                    out.close();
                    continue;
                } else {
                    outputObjFile(out, gSurfaces[i]);
                    cerr << "wrote " << filename << endl;
                }
            }
        }
    }
    cerr << endl << "*** done ***" << endl;
}

void recordVerticesa() {
    // For complex models, it is too expensive to specify
    // all vertices each frame. We can make things more efficient
    // by recording the vertices on application startup, and then
    // drawing from the pre-recorded data structure.

    recorders = new Recorders();

    // CURVES
    for (int i = 0; i < (int)gCurves.size(); i++) {
        recordCurve(gCurves[i], &recorders->curve);
    }

    for (int i = 0; i < (int)gCurves.size(); i++) {
        recordCurveFrames(gCurves[i], &recorders->curveFrames, gLineLen);
    }

    // SURFACE
    for (int i = 0; i < (int)gSurfaces.size(); i++) {
        recordSurface(gSurfaces[i], &recorders->surface);
    }
    for (int i = 0; i < (int)gSurfaces.size(); i++) {
        recordNormals(gSurfaces[i], &recorders->surfaceNormals, gLineLen);
    }
}

void freeVerticesa() {
    delete recorders;
    recorders = nullptr;
}
