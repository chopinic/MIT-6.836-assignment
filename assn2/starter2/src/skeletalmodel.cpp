#include "skeletalmodel.h"
#include <cassert>

#include "starter2_util.h"
#include "vertexrecorder.h"

using namespace std;

SkeletalModel::SkeletalModel()
{
    program = compileProgram(c_vertexshader, c_fragmentshader_light);
    if (!program)
    {
        printf("Cannot compile program\n");
        assert(false);
    }
}

SkeletalModel::~SkeletalModel()
{
    // destructor will release memory when SkeletalModel is deleted
    while (m_joints.size())
    {
        delete m_joints.back();
        m_joints.pop_back();
    }

    glDeleteProgram(program);
}

void SkeletalModel::load(const char *skeletonFile, const char *meshFile, const char *attachmentsFile)
{
    loadSkeleton(skeletonFile);

    m_mesh.load(meshFile);
    m_mesh.loadAttachments(attachmentsFile, (int)m_joints.size());

    computeBindWorldToJointTransforms();
    updateCurrentJointToWorldTransforms();
}

void SkeletalModel::draw(const Camera &camera, bool skeletonVisible)
{
    // draw() gets called whenever a redraw is required
    // (after an update() occurs, when the camera moves, the window is resized, etc)

    m_matrixStack.clear();

    glUseProgram(program);
    updateShadingUniforms();
    if (skeletonVisible)
    {
        drawJoints(camera);
        // cerr<<"Joints finished"<<endl;
        drawSkeleton(camera);
        // cerr<<"bone finished"<<endl;
    }
    else
    {
        // Tell the mesh to draw itself.
        // Since we transform mesh vertices on the CPU,
        // There is no need to set a Model matrix as uniform
        camera.SetUniforms(program, Matrix4f::identity());
        m_mesh.draw();
    }
    glUseProgram(0);
}

void SkeletalModel::updateShadingUniforms()
{
    // UPDATE MATERIAL UNIFORMS
    GLfloat diffColor[] = {0.4f, 0.4f, 0.4f, 1};
    GLfloat specColor[] = {0.9f, 0.9f, 0.9f, 1};
    GLfloat shininess[] = {50.0f};
    int loc = glGetUniformLocation(program, "diffColor");
    glUniform4fv(loc, 1, diffColor);
    loc = glGetUniformLocation(program, "specColor");
    glUniform4fv(loc, 1, specColor);
    loc = glGetUniformLocation(program, "shininess");
    glUniform1f(loc, shininess[0]);

    // UPDATE LIGHT UNIFORMS
    GLfloat lightPos[] = {3.0f, 3.0f, 5.0f, 1.0f};
    loc = glGetUniformLocation(program, "lightPos");
    glUniform4fv(loc, 1, lightPos);

    GLfloat lightDiff[] = {120.0f, 120.0f, 120.0f, 1.0f};
    loc = glGetUniformLocation(program, "lightDiff");
    glUniform4fv(loc, 1, lightDiff);
}

void SkeletalModel::loadSkeleton(const char *filename)
{
    // Load the skeleton from file here.
    ifstream in(filename);
    if (!in)
    {
        cerr << "Can't open file " << filename << endl;
        exit(0);
    }
    float x, y, z;
    int index;
    while (in >> x >> y >> z >> index)
    {
        // cout<<x<<" "<<y<<" "<<z<<" "<<endl;
        Joint *now;
        if (index == -1)
        {
            m_rootJoint = new Joint;
            now = m_rootJoint;
        }
        else
        {
            now = new Joint;
            m_joints[index]->children.push_back(now);
        }
        now->transform = Matrix4f(1, 0, 0, x,
                                  0, 1, 0, y,
                                  0, 0, 1, z,
                                  0, 0, 0, 1);
        m_joints.push_back(now);
    }
    cerr << "Loading file done" << endl;
}

void SkeletalModel::drawJoints(const Camera &camera)
{
    // Draw a sphere at each joint. You will need to add a recursive
    // helper function to traverse the joint hierarchy.
    //
    // We recommend using drawSphere( 0.025f, 12, 12 )
    // to draw a sphere of reasonable size.
    //
    // You should use your MatrixStack class. A function
    // should push it's changes onto the stack, and
    // use stack.pop() to revert the stack to the original
    // state.

    tranverseJoint(camera, m_rootJoint);
    return;

    // this is just for illustration:

    // translate from top of stack, but doesn't push, since that's not
    // implemented yet.
    Matrix4f M = m_matrixStack.top() * Matrix4f::translation(+0.5f, +0.5f, -0.5f);
    // update transformation uniforms
    camera.SetUniforms(program, M);
    // draw
    drawSphere(0.025f, 12, 12);
    // didn't push to stack, so no pop() needed
}
void SkeletalModel::tranverseJoint(const Camera &camera, Joint *now)
{
    m_matrixStack.push(now->transform);
    camera.SetUniforms(program, m_matrixStack.top());

    drawSphere(0.025f, 12, 12);
    for (int i = 0; i < now->children.size(); i++)
    {
        tranverseJoint(camera, now->children[i]);
    }
    m_matrixStack.pop();
}
float getAngle(Vector3f a, Vector3f b)
{
    // cout<<a.abs()*b.abs()<<endl;
    return acos(Vector3f::dot(a, b) / (a.abs() * b.abs()));
}
Matrix3f makeTrans(double angle1, double angle2, double angle3)
{
    return Matrix3f(1, 0, 0,
                    0, cos(angle1), -1 * sin(angle1),
                    0, sin(angle1), cos(angle1)) *
           Matrix3f(cos(angle2), 0, -1 * sin(angle2),
                    0, 1, 0,
                    sin(angle2), 0, cos(angle2)) *
           Matrix3f(cos(angle3), -1 * sin(angle3), 0,
                    sin(angle3), cos(angle3), 0,
                    0, 0, 1);
}
Matrix4f makeTran4f(Vector3f sN, Vector3f sB, Vector3f sT, Vector3f sV)
{
    Vector3f xx = Vector3f::cross(Vector3f(0, 0, 1), sT);
    double a = getAngle(xx, Vector3f(1, 0, 0));
    double b = getAngle(Vector3f(0, 0, 1), sT);
    double c = getAngle(xx, sB);
    if (xx[1] <= 0)
        a = -a;
    Matrix3f t = makeTrans(0, 0, a) * makeTrans(b, 0, c);
    Matrix4f ans = Matrix4f(
        Vector4f(t.getCol(0), 0),
        Vector4f(t.getCol(1), 0),
        Vector4f(t.getCol(2), 0),
        Vector4f(sV, 1));
}

void SkeletalModel::tranverseBones(const Camera &camera, Joint *now)
{
    m_matrixStack.push(now->transform);

    for (int i = 0; i < now->children.size(); i++)
    {
        Vector3f V = now->children[i]->transform.getCol(3).xyz();
        Vector3f T = V;
        T.normalize();
        Vector3f N = Vector3f::cross(Vector3f(1, 0, 0), T);
        if (N.abs() == 0)
        {
            N = Vector3f::cross(Vector3f(0, 1, 0), T);
            if (N.abs() == 0)
                N = Vector3f::cross(Vector3f(0, 0, 1), T);
        }
        N.normalize();
        Vector3f B = Vector3f::cross(N, T);
        B.normalize();

        // Cylinder has a different direction from the surface generation
        Matrix4f rota = Matrix4f(
            Vector4f(N, 0),
            Vector4f(T, 0),
            Vector4f(B, 0),
            Vector4f(0, 0, 0, 1));
        rota = m_matrixStack.top() * rota;
        camera.SetUniforms(program, rota);
        drawCylinder(6, 0.02f, V.abs());
        tranverseBones(camera, now->children[i]);
    }
    m_matrixStack.pop();
}
void SkeletalModel::drawSkeleton(const Camera &camera)
{
    // Draw cylinders between the joints. You will need to add a recursive
    // helper function to traverse the joint hierarchy.
    //
    // We recommend using drawCylinder(6, 0.02f, <height>);
    // to draw a cylinder of reasonable diameter.

    // you can use the stack with push/pop like this
    // m_matrixStack.push(Matrix4f::translation(+0.6f, +0.5f, -0.5f));
    // camera.SetUniforms(program, m_matrixStack.top());
    // drawCylinder(6, 0.02f, 0.2f);
    // m_matrixStack.pop();

    // m_matrixStack.push(Matrix4f::translation(m_rootJoint->transform.getCol(3).xyz()));
    tranverseBones(camera, m_rootJoint);
    // m_matrixStack.pop();
}

void SkeletalModel::setJointTransform(int jointIndex, float rX, float rY, float rZ)
{
    // Set the rotation part of the joint's transformation matrix
    // based on the passed in Euler angles.
    // Matrix4f t =  m_joints[jointIndex]->transform
    //                                 * Matrix4f::rotateX(rX)
    //                                 * Matrix4f::rotateY(rY)
    //                                 * Matrix4f::rotateZ(rZ);
    m_joints[jointIndex]->transform.setSubmatrix3x3(
        0,
        0,
        Matrix3f::rotateX(rX) * Matrix3f::rotateY(rY) * Matrix3f::rotateZ(rZ));
}

void SkeletalModel::computeBindWorldToJointTransforms()
{
    // 2.3.1. Implement this method to compute a per-joint transform from
    // world-space to joint space in the BIND POSE.
    //
    // Note that this needs to be computed only once since there is only
    // a single bind pose.
    //
    // This method should update each joint's bindWorldToJointTransform.
    // You will need to add a recursive helper function to traverse the joint hierarchy.

    m_matrixStack.clear();
    tranverseB2W(m_rootJoint);
}

void SkeletalModel::tranverseB2W(Joint *now)
{
    m_matrixStack.push(now->transform);
    now->bindWorldToJointTransform = m_matrixStack.top().inverse();
    for (int i = 0; i < now->children.size(); i++)
    {
        tranverseB2W(now->children[i]);
    }
    m_matrixStack.pop();
}

void SkeletalModel::updateCurrentJointToWorldTransforms()
{
    // 2.3.2. Implement this method to compute a per-joint transform from
    // joint space to world space in the CURRENT POSE.
    //
    // The current pose is defined by the rotations you've applied to the
    // joints and hence needs to be *updated* every time the joint angles change.
    //
    // This method should update each joint's currentJointToWorldTransform.
    // You will need to add a recursive helper function to traverse the joint hierarchy.
    m_matrixStack.clear();
    tranverseJ2W(m_rootJoint);
}
void SkeletalModel::tranverseJ2W(Joint *now)
{
    m_matrixStack.push(now->transform);
    now->currentJointToWorldTransform = m_matrixStack.top();
    for (int i = 0; i < now->children.size(); i++)
    {
        tranverseJ2W(now->children[i]);
    }
    m_matrixStack.pop();
}

void SkeletalModel::updateMesh()
{
    // 2.3.2. This is the core of SSD.
    // Implement this method to update the vertices of the mesh
    // given the current state of the skeleton.
    // You will need both the bind pose world --> joint transforms.
    // and the current joint --> world transforms.
    vector<Matrix4f> JointsM;
    for (int i = 0; i < m_joints.size(); i++)
    {
        Matrix4f j = (m_joints[i]->currentJointToWorldTransform * m_joints[i]->bindWorldToJointTransform);
        JointsM.push_back(j);
        // for (int i = 0; i < 4; i++)
        // {
        //     for (int ii = 0; ii < 4; ii++)
        //     {
        //         cout << j.getRow(i)[ii] << " ";
        //     }
        //     cout << endl;
        // }
        // cout << endl;
    }

    // cout<<"JointsM.size "<<JointsM.size()<<endl;
    // cout<<"m_mesh.attachments "<<m_mesh.attachments[0].size()<<endl;
    for (int i = 0; i < m_mesh.bindVertices.size(); i++)
    {
        Vector4f p = Vector4f(m_mesh.bindVertices[i], 1);
        Vector4f pt;
        for (int ii = 0; ii < m_mesh.attachments[i].size(); ii++)
        {
            pt = pt + m_mesh.attachments[i][ii] * JointsM[ii] * p;
        }
        // cout<<p[0]<<" "<<p[1]<<endl;
        m_mesh.currentVertices[i] = pt.xyz();
    }
}
