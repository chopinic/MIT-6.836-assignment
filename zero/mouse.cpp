#include <GL/glut.h>
#include <iostream>

int mouseX1 = -1,mouseZ1 ,mouseY1= -1,mouseZ2;
extern GLfloat angleX,angleY,depth;
extern void drawScene();
bool isClick = false,isZoom = false;
void mouseClick(int button,int state,int x,int y){
    if(button == GLUT_LEFT_BUTTON&&state == GLUT_UP){
        // std::cout<<"Click Up!"<<std::endl;
        isClick = false;
    }
    if(button == GLUT_LEFT_BUTTON&&state == GLUT_DOWN){
        mouseX1 = -1,mouseY1 = -1;
        // std::cout<<"Click Down!"<<std::endl;
        isClick = true;
    }
    if(button == GLUT_RIGHT_BUTTON&&state == GLUT_DOWN){
        // std::cout<<"Click Up!"<<std::endl;
        mouseX1 = -1,mouseY1 = -1;
        isZoom = true;
    }
    if(button == GLUT_RIGHT_BUTTON&&state == GLUT_UP){
        isZoom = false;
    }
}
void mouseMotion(int x,int y){
    if(isClick){
        if(mouseX1 != -1&&mouseY1 != -1){
            angleX+=x-mouseX1;
            angleY+=y-mouseY1;
            drawScene();
        }
        
        // std::cout<<"Move!"<<std::endl;
    }
    if(isZoom){
        if(mouseX1 != -1&&mouseY1 != -1){

            depth +=(double)((x-mouseX1)+(y-mouseY1))/10;
            std::cout<<depth<<std::endl;

            drawScene();
        }
    }
    mouseX1 = x;
    mouseY1 = y;
}