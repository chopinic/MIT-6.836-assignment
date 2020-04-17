#include "surf.h"
#include "vertexrecorder.h"

using namespace std;

namespace
{
const float c_pi = 3.14159265358979323846f;

// We're only implenting swept surfaces where the profile curve is
// flat on the xy-plane.  This is a check function.
static bool checkFlat(const Curve &profile)
{
    for (unsigned i = 0; i < profile.size(); i++)
    {
        if (profile[i].V[2] != 0.0 ||
            profile[i].T[2] != 0.0 ||
            profile[i].N[2] != 0.0)
            return false;
    }
    return true;
}
} // namespace
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

// DEBUG HELPER
Surface quad()
{
    Surface ret;
    Vector3f sB = Vector3f(1, 1, 1);
    Vector3f sT = Vector3f(0, -1, 1);
    Vector3f xx = Vector3f::cross(Vector3f(0, 0, 1), sT);
    double a = getAngle(xx, Vector3f(1, 0, 0));
    double b = getAngle(Vector3f(0, 0, 1), sT);
    double c = getAngle(xx, sB);

    Matrix3f trans = makeTrans(0, 0, a) * makeTrans(b, 0, c);

    Vector3f v[4] = {Vector3f(-1, -1, 0),
                     Vector3f(+1, -1, 0),
                     Vector3f(+1, +1, 0),
                     Vector3f(-1, +1, 0)};
    Vector3f n[4] = {Vector3f(0, 0, 1),
                     Vector3f(0, 0, 1),
                     Vector3f(0, 0, 1),
                     Vector3f(0, 0, 1)};
    for (int i = 0; i < 4; i++)
    {
        v[i] = trans * v[i];
        n[i] = trans * n[i];
    }


    for (int i = 0; i < 4; i++)
    {
        ret.VV.push_back(v[i]);
        ret.VN.push_back(n[i]);
    }

    ret.VF.push_back(Tup3u(0, 1, 2));
    ret.VF.push_back(Tup3u(0, 2, 3));
    return ret;
}

Surface makeSurfRev(const Curve &profile, unsigned steps)
{
    Surface surface;
    if (!checkFlat(profile))
    {
        cerr << "surfRev profile curve must be flat on xy plane." << endl;
        exit(0);
    }

    // TODO: Here you should build the surface.  See surf.h for details.
    try
    {
        double angle = (double)2 / steps * c_pi;
        Matrix3f trans = makeTrans(0, angle, 0);
        // cout<<"trans.inverse().transposed()"<<endl;
        // push all the vertices and their normals
        for (int i = 0; i < profile.size(); i++)
        {
            Vector3f V = profile[i].V;
            Vector3f N = profile[i].N;
            for (int k = 0; k < steps; k++)
            {
                surface.VV.push_back(V);
                surface.VN.push_back(-N);
                N = (trans.inverse().transposed() * N).normalized();
                V = trans * V;
            }
        }

        // Make surface
        int a, b, c, d;
        for (int k = 0; k < profile.size() - 1; k++)
        {
            a = 0 + k * steps;
            b = 1 + k * steps;
            c = b + steps;
            d = c - 1;
            for (int i = 0; i < steps; i++)
            {
                if (i == steps - 1)
                {
                    b -= steps;
                    c -= steps;
                }
                surface.VF.push_back(Tup3u(a, b, c));
                surface.VF.push_back(Tup3u(a, c, d));
                a++;
                b++;
                c++;
                d++;
            }
        }
        return surface;
    }
    catch (...)
    {
        cerr << "\t>>> makeSurfRev called (but not implemented).\n\t>>> Returning empty surface." << endl;
        surface = quad();

        return surface;
    }
}

Surface makeGenCyl(const Curve &profile, const Curve &sweep)
{
    Surface surface;
    // return surface;

    if (!checkFlat(profile))
    {
        cerr << "genCyl profile curve must be flat on xy plane." << endl;
        exit(0);
    }

    // TODO: Here you should build the surface.  See surf.h for details.

    try
    {
        // Push all the vertices
        for (int i = 0; i < sweep.size(); i++)
        {
            
            Vector3f sN = sweep[i].N;
            Vector3f sB = sweep[i].B;
            Vector3f sT = sweep[i].T;
            Vector3f sV = sweep[i].V;
            Vector3f xx = Vector3f::cross(Vector3f(0, 0, 1), sT);
            double a = getAngle(xx, Vector3f(1, 0, 0));
            double b = getAngle(Vector3f(0, 0, 1), sT);
            double c = getAngle(xx, sB);
            if (xx[1] <= 0)
                a = -a;
            Matrix3f trans = makeTrans(0, 0, a) * makeTrans(b, 0, c);
            for (int k = 0; k < profile.size(); k++)
            {
                Vector3f nV = profile[k].V;
                Vector3f nN = profile[k].N;
                nV = trans * nV + sV;
                nN = trans.inverse().transposed() * nN;
                surface.VV.push_back(nV);
                surface.VN.push_back(-1 * nN);
            }
        }

        // Make surfaces
        for (int i = 0; i < sweep.size(); i++)
        {
            int a = 0 + profile.size() * i;
            int b = a + 1;
            int c = b + profile.size();
            int d = c - 1;
            if (i == sweep.size() - 1)
            {
                c = 1;
                d = 0;
            }
            for (int k = 0; k < profile.size() - 1; k++)
            {
                surface.VF.push_back(Tup3u(a, b, c));
                surface.VF.push_back(Tup3u(a, c, d));
                a++;b++;c++;d++;
            }
        }
        return surface;
    }
    catch (...)
    {

        cerr << "\t>>> makeGenCyl called (but not implemented).\n\t>>> Returning empty surface." << endl;

        return surface;
    }
}

void recordSurface(const Surface &surface, VertexRecorder *recorder)
{
    const Vector3f WIRECOLOR(1.0f, 0, 0);
    for (int i = 0; i < (int)surface.VF.size(); i++)
    {
        recorder->record(surface.VV[surface.VF[i][0]], surface.VN[surface.VF[i][0]], WIRECOLOR);
        recorder->record(surface.VV[surface.VF[i][1]], surface.VN[surface.VF[i][1]], WIRECOLOR);
        recorder->record(surface.VV[surface.VF[i][2]], surface.VN[surface.VF[i][2]], WIRECOLOR);
    }
}

void recordNormals(const Surface &surface, VertexRecorder *recorder, float len)
{
    const Vector3f NORMALCOLOR(0, 1, 1);
    for (int i = 0; i < (int)surface.VV.size(); i++)
    {
        recorder->record_poscolor(surface.VV[i], NORMALCOLOR);
        recorder->record_poscolor(surface.VV[i] + surface.VN[i] * len, NORMALCOLOR);
    }
}

void outputObjFile(ostream &out, const Surface &surface)
{

    for (int i = 0; i < (int)surface.VV.size(); i++)
        out << "v  "
            << surface.VV[i][0] << " "
            << surface.VV[i][1] << " "
            << surface.VV[i][2] << endl;

    for (int i = 0; i < (int)surface.VN.size(); i++)
        out << "vn "
            << surface.VN[i][0] << " "
            << surface.VN[i][1] << " "
            << surface.VN[i][2] << endl;

    out << "vt  0 0 0" << endl;

    for (int i = 0; i < (int)surface.VF.size(); i++)
    {
        out << "f  ";
        for (unsigned j = 0; j < 3; j++)
        {
            unsigned a = surface.VF[i][j] + 1;
            out << a << "/"
                << "1"
                << "/" << a << " ";
        }
        out << endl;
    }
}
