#include <GL/glut.h>
#include <cmath>
#include <iostream>
#include <sstream>
#include <vector>
#include <vecmath.h>
#include <Vector3f.cpp>
#include <Vector2f.cpp>

#include <mouse.cpp>

using namespace std;


template <class T> void read(T& a,stringstream &in) {
    a = 0; char ch; in>>ch;
    while (ch<'0' || ch>'9')ch = getchar();
    while (ch >= '0' && ch <= '9') {
        a = a * 10 + ch - '0';
        ch = getchar();
    }
}


#define MAX_BUFFER_SIZE 1024
// Globals


GLuint choose = 0;
GLfloat incre = 0.0;
GLfloat lx = 0,ly = 0,lz = 0;
GLfloat angleX = 0,angleY = 0;
GLfloat depth = 0;
GLuint sphereList;
// vector<Vector3f> 

// This is the list of points (3D vectors)
vector<Vector3f> vecv;

// This is the list of normals (also 3D vectors)
vector<Vector3f> vecn;

// This is the list of faces (indices into vecv and vecn)
vector<vector<unsigned> > vecf;


// You will need more global variables to implement color and position changes


// These are convenience functions which allow us to call OpenGL 
// methods on Vec3d objects
inline void glVertex(const Vector3f &a) 
{ glVertex3fv(a); }

inline void glNormal(const Vector3f &a) 
{ glNormal3fv(a); }


// This function is called whenever a "Normal" key press is received.
void keyboardFunc( unsigned char key, int x, int y )
{
    switch ( key )
    {
    case 27: // Escape key
        exit(0);
        break;
    case 'c':
        // add code to change color here
		cout << "now choise is " << choose <<endl; 
        for(int i = 0 ; i < 100 ; i ++){
            incre += 0.1/10;
            // glutPostRedisplay();
            drawScene();
            // cout << "now incre is " << incre <<endl; 
        }
        incre = 0;
        choose = (++choose)%4;
        break;
    case 'r':
        angleX+=1;
        cout << "now angleX is " << angleX <<endl; 

        break;
    default:
        cout << "Unhandled key press " << key << "." << endl;        
    }
    // cout << "refresh now" << endl;

	// this will refresh the screen so that the user sees the color change
    glutPostRedisplay();
}

// This function is called whenever a "Special" key press is received.
// Right now, it's handling the arrow keys.
void specialFunc( int key, int x, int y )
{
    switch ( key )
    {
    case GLUT_KEY_UP:
		cout << "up arrow." << endl;
        ly += 0.5;
		break;
    case GLUT_KEY_DOWN:
        // add code to change light position
		cout << "down arrow." << endl;
        ly -= 0.5;

		break;
    case GLUT_KEY_LEFT:
        // add code to change light position
		cout << "left arrow." << endl;
        lx -= 0.5;
		break;
    case GLUT_KEY_RIGHT:
        // add code to change light position
		cout << "right arrow." << endl;
        lx += 0.5;

		break;
    }

	// this will refresh the screen so that the user sees the light position
    glutPostRedisplay();
}

// This function is responsible for displaying the object.
void drawScene()
{
    int i;

    // Clear the rendering window
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Rotate the image
    glMatrixMode( GL_MODELVIEW );  // Current matrix affects objects positions
    glLoadIdentity();              // Initialize to the identity

    // Position the camera at [0,0,5], looking at [0,0,0],
    // with [0,1,0] as the up direction.
    gluLookAt(0.0, 0.0, 5.0,
              0.0, 0.0, 0.0,
              0.0, 1.0, 0.0);

    // Set material properties of object

	// Here are some colors you might use - feel free to add more
    GLfloat diffColors[4][4] = { {0.5, 0.5, 0.9, 1.0},
                                 {0.9, 0.5, 0.5, 1.0},
                                 {0.5, 0.9, 0.3, 1.0},
                                 {0.3, 0.8, 0.9, 1.0} };
    
    int now = (choose+1)%4;
    GLfloat smoothColor[4] = { diffColors[choose][0]+(diffColors[now][0]-diffColors[choose][0])*(incre),
                                diffColors[choose][1]+(diffColors[now][1]-diffColors[choose][1])*(incre),
                                diffColors[choose][2]+(diffColors[now][2]-diffColors[choose][2])*(incre),
                                diffColors[choose][3]+(diffColors[now][3]-diffColors[choose][3])*(incre) };
    
    // cout<<smoothColor[0]<<" "<<smoothColor[1]<<" "<<smoothColor[2]<<" "<<smoothColor[3]<<endl;
	
    // Here we use the first color entry as the diffuse color
    glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, smoothColor);

	// Define specular color and shininess
    GLfloat specColor[] = {1.0, 1.0, 1.0, 1.0};
    GLfloat shininess[] = {100.0};

	// Note that the specular color and shininess can stay constant
    glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, specColor);
    glMaterialfv(GL_FRONT_AND_BACK, GL_SHININESS, shininess);
  
    // Set light properties

    // Light color (RGBA)
    GLfloat Lt0diff[] = {1.0,1.0,1.0,1.0};
    // Light position
	GLfloat Lt0pos[] = {1.0f+lx, 1.0f+ly, 5.0f+lz, 1.0f};

    glLightfv(GL_LIGHT0, GL_DIFFUSE, Lt0diff);
    glLightfv(GL_LIGHT0, GL_POSITION, Lt0pos);

	// This GLUT method draws a teapot.  You should replace
	// it with code which draws the object you loaded.
	// glutSolidTeapot(1.0);
    
    glTranslatef(0, 0, depth);
    glRotatef(angleX,0,1,0);
    glRotatef(angleY,0,0,1);
    // glRotatef(angleZ,0,1,0);
    glCallList(sphereList);
    // for(int i = 0 ; i < vecf.size() ; i++){
    //     glBegin(GL_TRIANGLES);
    //     glNormal3d(vecn[vecf[i][2]-1][0],vecn[vecf[i][2]-1][1],vecn[vecf[i][2]-1][2]);
    //     // cout<<i<<" "<<endl;
    //     glVertex3d(vecv[vecf[i][0]-1][0],vecv[vecf[i][0]-1][1],vecv[vecf[i][0]-1][2]);
    //     glNormal3d(vecn[vecf[i][5]-1][0],vecn[vecf[i][5]-1][1],vecn[vecf[i][5]-1][2]);
    //     glVertex3d(vecv[vecf[i][3]-1][0],vecv[vecf[i][3]-1][1],vecv[vecf[i][3]-1][2]);
    //     glNormal3d(vecn[vecf[i][8]-1][0],vecn[vecf[i][8]-1][1],vecn[vecf[i][8]-1][2]);
    //     glVertex3d(vecv[vecf[i][6]-1][0],vecv[vecf[i][6]-1][1],vecv[vecf[i][6]-1][2]);
    //     glEnd();
    // }
    
    // Dump the image to the screen.
    glutSwapBuffers();


}

// Initialize OpenGL's rendering modes
void initRendering()
{
    glEnable(GL_DEPTH_TEST);   // Depth testing must be turned on
    glEnable(GL_LIGHTING);     // Enable lighting calculations
    glEnable(GL_LIGHT0);       // Turn on light #0.

    sphereList = glGenLists(1);
    glNewList(sphereList, GL_COMPILE);	
    for(int i = 0 ; i < vecf.size() ; i++){
        glBegin(GL_TRIANGLES);
        glNormal3d(vecn[vecf[i][2]-1][0],vecn[vecf[i][2]-1][1],vecn[vecf[i][2]-1][2]);
        // cout<<i<<" "<<endl;
        glVertex3d(vecv[vecf[i][0]-1][0],vecv[vecf[i][0]-1][1],vecv[vecf[i][0]-1][2]);
        glNormal3d(vecn[vecf[i][5]-1][0],vecn[vecf[i][5]-1][1],vecn[vecf[i][5]-1][2]);
        glVertex3d(vecv[vecf[i][3]-1][0],vecv[vecf[i][3]-1][1],vecv[vecf[i][3]-1][2]);
        glNormal3d(vecn[vecf[i][8]-1][0],vecn[vecf[i][8]-1][1],vecn[vecf[i][8]-1][2]);
        glVertex3d(vecv[vecf[i][6]-1][0],vecv[vecf[i][6]-1][1],vecv[vecf[i][6]-1][2]);
        glEnd();
    }
    glEndList();
    cout<<"generated display list"<<endl;
    						

}

// Called when the window is resized
// w, h - width and height of the window in pixels.
void reshapeFunc(int w, int h)
{
    // Always use the largest square viewport possible
    if (w > h) {
        glViewport((w - h) / 2, 0, h, h);
    } else {
        glViewport(0, (h - w) / 2, w, w);
    }

    // Set up a perspective view, with square aspect ratio
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    // 50 degree fov, uniform aspect ratio, near = 1, far = 100
    gluPerspective(50.0, 1.0, 1.0, 100.0);
}

void loadInput()
{

    // cout<<"reading file"<<endl;
    char buffer[MAX_BUFFER_SIZE];
    int vcot = 0,vncot = 0,fcot = 0;

    while(cin.getline(buffer,MAX_BUFFER_SIZE)){
        string s;
        stringstream ss(buffer);
        Vector3f temp;
        GLuint t;
        ss>>s;
        if(s=="v"){
            ss>>temp[0]>>temp[1]>>temp[2];
            vecv.push_back(temp);
            vcot++;
        }
        else if(s == "vn"){
            ss>>temp[0]>>temp[1]>>temp[2];
            vecn.push_back(temp);
            vncot++;
        }
        else if(s == "f"){
            vector<unsigned> face;
            char ind9[50];
            ss.getline(ind9,50);
            for(int i = 0 ; i < 50&&ind9[i]!=0 ; i ++){
                if(ind9[i] == '/')
                    ind9[i] = ' ';
                // cout<<ind9[i];
            }
            // cout<<endl;
            stringstream ind(ind9);
            for(int i= 0 ; i < 9 ; i++){
                ind>>t;
                face.push_back(t);
            }
            vecf.push_back(face);

            fcot++;
        }
        
    }
    
    cout<<"reading done, "<<vcot<<" "<<vncot<<" "<<fcot<<endl;

}

// Main routine.
// Set up OpenGL, define the callbacks and start the main loop
int main( int argc, char** argv )
{
    loadInput();

    glutInit(&argc,argv);

    // We're going to animate it, so double buffer 
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH );

    // Initial parameters for window position and size
    glutInitWindowPosition( 60, 60 );
    glutInitWindowSize( 360, 360 );
    glutCreateWindow("Assignment 0");

    // Initialize OpenGL parameters.
    initRendering();

    // Set up callback functions for key presses
    glutKeyboardFunc(keyboardFunc); // Handles "normal" ascii symbols
    glutSpecialFunc(specialFunc);   // Handles "special" keyboard keys
    glutMouseFunc(mouseClick);
    glutMotionFunc(mouseMotion);

     // Set up the callback function for resizing windows
    glutReshapeFunc( reshapeFunc );

    // Call this whenever window needs redrawing
    glutDisplayFunc( drawScene );

    // Start the main loop.  glutMainLoop never returns.
    glutMainLoop( );

    return 0;	// This line is never reached.
}
