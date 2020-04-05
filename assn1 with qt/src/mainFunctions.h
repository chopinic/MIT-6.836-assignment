#include "gl.h"
#include <GLFW/glfw3.h>

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

using namespace std;

// Global variables here.

// This assignment uses a useful camera implementation
Camera camera;

// most curves are drawn with constant color, and no lighting
GLuint program_color;
// for surfaces, we apply a light+material shader
GLuint program_light;

// These are state variables for the UI
bool gMousePressed = false;
enum CurveMode {
   CURVE_MODE_NONE,
   CURVE_MODE_ACTIVE,
   CURVE_MODE_WITH_NORMALS
};
int  gCurveMode = CURVE_MODE_ACTIVE;
enum SurfaceMode {
   SURFACE_MODE_NONE,
   SURFACE_MODE_ACTIVE,
   SURFACE_MODE_WITH_NORMALS
};
int  gSurfaceMode = SURFACE_MODE_ACTIVE;
int  gPointMode = 1;

// This detemines how big to draw the normals
const float gLineLen = 0.1f;

// curve and surfaces vertices are recorded on application
// startup and reused when drawing each frame.
struct Recorders {
    VertexRecorder curve;
    VertexRecorder curveFrames;
    VertexRecorder surface;
    VertexRecorder surfaceNormals;
};
Recorders* recorders;

// These std::vectors store the control points, curves, and
// surfaces that will end up being drawn. Other std::vectors
// store the names for the curves and surfaces (as given by the files)
vector<vector<Vector3f> > gCtrlPoints;
vector<Curve> gCurves;
vector<string> gCurveNames;
vector<Surface> gSurfaces;
vector<string> gSurfaceNames;

void keyCallbacka(GLFWwindow* window, int key,
    int scancode, int action, int mods);

void mouseCallbacka(GLFWwindow* window, int button, int action, int mods) ;

void motionCallbacka(GLFWwindow* window, double x, double y);

void setViewporta(GLFWwindow* window);

void drawAxisa();

void drawCurvea();

void updateMaterialUniformsa(GLuint program);

void updateLightUniformsa(GLuint program);

void updateLightUniformsa(GLuint program);

void drawSurfacea();

void drawPointsa();

void initRenderinga();

void loadObjectsa(int argc, char *argv[]);

void recordVerticesa();

void freeVerticesa();

