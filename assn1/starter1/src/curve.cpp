#include "curve.h"
#include "solve.h"
#include "vertexrecorder.h"
#define MAX_CPS 100
using namespace std;

const float c_pi = 3.14159265358979323846f;

namespace
{
// Approximately equal to.  We don't want to use == because of
// precision issues with floating point.
inline bool approx(const Vector3f& lhs, const Vector3f& rhs)
{
	const float eps = 1e-8f;
	return (lhs - rhs).absSquared() < eps;
}


}



Vector3f genP(Vector3f a,Vector3f b){
	Vector3f ans;
	Matrix2f t(a[0],b[0],a[1],b[1]) , 
		tx(-1*a[2],-1*b[2],a[1],b[1]),
		ty(a[0],b[0],-1*a[2],-1*b[2]);
	if(t.determinant()==0){
		ans[2] = 0;
		ans[0] = 1;
		ans[1] = a[1]/a[0];
	}
	else{		
		ans[0] = tx.determinant()/t.determinant();
		ans[1] = ty.determinant()/t.determinant();
		ans[2] = 1;
	}
	double sum = ans[0]*ans[0]+ans[1]*ans[1]+ans[2]*ans[2];
	sum = sqrt(sum);
	ans[0] /=sum;
	ans[1] /=sum;
	ans[2] /=sum;

	return ans;

}
Vector3f gen3P(Vector3f a,Vector3f b){
	Vector3f ans;
	Matrix3f t(a[0],b[0],1,a[1],b[1],1,a[2],b[2],1) , 
		tx(0,0,0,a[1],b[1],1,a[2],b[2],1),
		ty(a[0],b[0],1,0,0,0,a[2],b[2],1),
		tz(a[0],b[0],1,a[1],b[1],1,0,0,0);
	ans[0] = tx.determinant()/t.determinant();
	ans[1] = ty.determinant()/t.determinant();
	ans[2] = tz.determinant()/t.determinant();
	if(ans[0]==0&&ans[1]==0&&ans[2]==0){
		Matrix3f t(a[0],b[0],1,a[1],b[1],1,a[2],b[2],1) , 
		tx(0,0,1,a[1],b[1],1,a[2],b[2],1),
		ty(a[0],b[0],1,0,0,1,a[2],b[2],1),
		tz(a[0],b[0],1,a[1],b[1],1,0,0,1);
	ans[0] = tx.determinant()/t.determinant();
	ans[1] = ty.determinant()/t.determinant();
	ans[2] = tz.determinant()/t.determinant();
	}
	double sum = ans[0]*ans[0]+ans[1]*ans[1]+ans[2]*ans[2];
	sum = sqrt(sum);
	ans[0] /=sum;
	ans[1] /=sum;
	ans[2] /=sum;

	return ans;
}
Vector3f sLineF(Vector3f a,Vector3f b, double now){
	Vector3f ans;
	for(int i = 0 ; i < 3 ; i++)
		ans[i] = a[i]*(1-now)+b[i]*now;
	return ans;
}

Vector3f genN(Vector3f a,Vector3f b,Vector3f c, Vector3f x){
	Vector3f ab, bc;
	for(int i = 0 ; i < 3 ; i++){
		ab[i] = a[i]-b[i];
		bc[i] = b[i]-c[i];
	}
	return genP(ab,bc);
}


void say(Vector3f& c) //定义运算符“<<”重载函数
{
   cout<<c[0]<<" "<<c[1]<<" "<<c[2];
}
Curve evalBezier(const vector< Vector3f >& P, unsigned steps)
{
	// Check
	int cps = P.size();
	if (P.size() < 4 || P.size() % 3 != 1)
	{
		cerr << "evalBezier must be called with 3n+1 control points." << endl;
		// exit(0);
	}

	// TODO:
	// You should implement this function so that it returns a Curve
	// (e.g., a vector< CurvePoint >).  The variable "steps" tells you
	// the number of points to generate on each piece of the spline.
	// At least, that's how the sample solution is implemented and how
	// the SWP files are written.  But you are free to interpret this
	// variable however you want, so long as you can control the
	// "resolution" of the discretized spline curve with it.

	// Make sure that this function computes all the appropriate
	// Vector3fs for each CurvePoint: V,T,N,B.
	// [NBT] should be unit and orthogonal.

	// Also note that you may assume that all Bezier curves that you
	// receive have G1 continuity.  Otherwise, the TNB will not be
	// be defined at points where this does not hold.
	try{
		Curve ans;
		vector<Vector3f> rec[2][MAX_CPS];
		double ms = (double)1/steps;
		double now = 0;
		steps++;
		vector<Vector3f> *subdot = rec[0];
		vector<Vector3f> *ssubdot = rec[1];
		for(int j = 0 ; j < cps-1 ; j++){
			for(int i = 0 ; i < steps ; i++){
				subdot[j].push_back(sLineF(P[j],P[j+1],now));
				now+=ms;
			}
			now = 0;
		}
		while(cps-3){				
			for(int i = 0 ; i < steps ; i++){
				for(int j = 0 ; j < cps-2 ; j++)
					ssubdot[j].push_back(sLineF(subdot[j][i],subdot[j+1][i],now));
				now+=ms;
			}
			now = 0;
			swap(ssubdot,subdot);
			for(int j = 0 ; j < cps-2 ; j++)
				ssubdot[j].clear();
			cps--;
		}
		swap(ssubdot,subdot);
		now = 0;
		for(int i = 0 ; i < steps ; i++){
			CurvePoint t;
			t.V = sLineF(ssubdot[0][i],ssubdot[1][i],now);
			for(int k = 0 ; k < 3 ; k ++)
				t.T[k] = ssubdot[1][i][k]-ssubdot[0][i][k];

			// t.N = genN(subdot[0][i], subdot[1][i], subdot[2][i], t.V);
			// t.B = gen3P(t.T, t.N);
			
			// for(int j = 0 ; j < 3&&ans.size()!=0 ; j++){
			// 	if(Vector3f::dot(ans[ans.size()-1].N,t.N)<0)
			// 		t.N = -1*t.N;
			// 	if(Vector3f::dot(ans[ans.size()-1].B,t.B)<0)
			// 		t.B = -1*t.B;
			// }
			// swap(t.B,t.N);


			Vector3f b(0,0,1);
			if(Vector3f::cross(b,t.T)!=Vector3f(0,0,0)){}
			else if(Vector3f::cross(Vector3f(0,1,0),t.T)!=Vector3f(0,0,0))
				b = Vector3f(0,1,0);
			else if(Vector3f::cross(Vector3f(1,0,0),t.T)!=Vector3f(0,0,0))
				b = Vector3f(1,0,0);
			else
				b = Vector3f(0,0,1);
			t.N = Vector3f::cross(b,t.T).normalized();
			t.B = Vector3f::cross(t.T,t.N).normalized();
			b = t.B;
			ans.push_back(t);
			now+=ms;
		}
		// cout << "\t>>> Control points (type vector< Vector3f >): " << endl;
		// for (int i = 0; i < (int)P.size(); ++i)
		// {
		// 	cout << "\t>>> " << P[i] << endl;
		// }

		// cout << "\t>>> Steps (type steps): " << steps << endl;
		return ans;
	}catch (const char* msg) {
		cerr << msg << endl;
		cerr << "\t>>> evalBezier has been called with the following input:" << endl;
		cerr << "\t>>> Control points (type vector< Vector3f >): " << endl;
		for (int i = 0; i < (int)P.size(); ++i)
		{
			cerr << "\t>>> " << P[i] << endl;
		}

		cerr << "\t>>> Steps (type steps): " << steps << endl;
		cerr << "\t>>> Returning empty curve." << endl;

		return Curve();
	}
}
Vector3f BsplineTF(Vector3f a,Vector3f b,Vector3f c,Vector3f d,double t ){
	Vector3f ans;
	for(int i = 0 ; i < 3 ; i ++){
		ans[i] = -1* a[i]*pow((1-t) , 2)/2+ b[i]*(3*t*t - 4*t)/2 
		+ c[i]*(-3*t*t + 2*t +  1)/2 + d[i] * t/2;
	}
	return ans;
}
Vector3f BsplineF(Vector3f a,Vector3f b,Vector3f c,Vector3f d,double t ){
	Vector3f ans;
	for(int i = 0 ; i < 3 ; i ++){
		ans[i] = a[i]*pow((1-t) , 3)/6 + b[i]*(3*t*t*t - 6*t*t + 4)/6  
		+ c[i]*(-3*t*t*t + 3*t*t + 3*t + 1)/6 + d[i] * t*t*t/6;
	}
	// cout<<"a , b: ";say(a);cout<<" ";say(b);cout<<endl;
	// cout<<pow((1-t) , 3)/6<<" "<<(3*t*t*t - 6*t*t + 4)/6  <<" "
	// <<(-3*t*t*t + 3*t*t + 3*t + 1)/6<< " " <<t*t*t/6<<endl;
	return ans;
}

Curve evalBspline(const vector< Vector3f >& P, unsigned steps)
{
	// Check
	if (P.size() < 4)
	{
		cerr << "evalBspline must be called with 4 or more control points." << endl;
		exit(0);
	}

	// Unused Matrix
	Matrix4f BMatrix(
		 (double)1 / 6 , (double)-3 / 6 ,  (double)3 / 6 , (double)-1 / 6 ,
		 (double)4 / 6 ,          0     , (double)-6 / 6 ,  (double)3 / 6 ,
		 (double)1 / 6 ,  (double)3 / 6 ,  (double)3 / 6 , (double)-3 / 6 ,
		         0     ,          0     ,          0     ,          1     );

	// TODO:
	// It is suggested that you implement this function by changing
	// basis from B-spline to Bezier.  That way, you can just call
	// your evalBezier function.
	int k = 0;
	double ms = (double)1/steps;
	double now;
	Curve ans;
	Vector3f b(0,0,1);
	
	while(k+3<P.size()){
		now = 0;
		vector<Vector3f> piece = vector<Vector3f>( P.begin()+k, P.begin()+k+4);
		// cout<<"piecesize: "<<piece.size()<<endl;
		for(int i= 0; i < steps+1 ; i++){
			CurvePoint t;
			t.V = BsplineF(piece[0],piece[1],piece[2],piece[3],now);

			// say(t.V);cout<<" now "<<now<<endl<<endl;

			t.T = BsplineTF(piece[0],piece[1],piece[2],piece[3],now).normalized();
			if(Vector3f::cross(b,t.T)!=Vector3f(0,0,0)){}
			else if(Vector3f::cross(Vector3f(0,1,0),t.T)!=Vector3f(0,0,0))
				b = Vector3f(0,1,0);
			else if(Vector3f::cross(Vector3f(1,0,0),t.T)!=Vector3f(0,0,0))
				b = Vector3f(1,0,0);
			else
				b = Vector3f(0,0,1);
			// say(b);cout<<endl;

			t.N = Vector3f::cross(b,t.T).normalized();
			// say(t.N);cout<<endl;
			t.B = Vector3f::cross(t.T,t.N).normalized();
			now+=ms;
			b = t.B;
			ans.push_back(t);
		}
		k++;
	}
	// cout<<"totalsize:::"<<ans.size()<<endl<<endl;
	return ans;

	cerr << "\t>>> evalBSpline has been called with the following input:" << endl;
	cerr << "\t>>> Control points (type vector< Vector3f >): " << endl;
	cerr << "\t>>> Steps (type steps): " << steps << endl;
	cerr << "\t>>> Returning empty curve." << endl;

	// Return an empty curve right now.
	return Curve();
}

Curve evalCircle(float radius, unsigned steps)
{
	// This is a sample function on how to properly initialize a Curve
	// (which is a vector< CurvePoint >).

	// Preallocate a curve with steps+1 CurvePoints
	Curve R(steps + 1);

	// Fill it in counterclockwise
	for (unsigned i = 0; i <= steps; ++i)
	{
		// step from 0 to 2pi
		float t = 2.0f * c_pi * float(i) / steps;

		// Initialize position
		// We're pivoting counterclockwise around the y-axis
		R[i].V = radius * Vector3f(cos(t), sin(t), 0);

		// Tangent vector is first derivative
		R[i].T = Vector3f(-sin(t), cos(t), 0);

		// Normal vector is second derivative
		R[i].N = Vector3f(-cos(t), -sin(t), 0);

		// Finally, binormal is facing up.
		R[i].B = Vector3f(0, 0, 1);
	}

	return R;
}

void recordCurve(const Curve& curve, VertexRecorder* recorder)
{
	const Vector3f YELLOW(1, 1, 1);
	for (int i = 0; i < (int)curve.size() - 1; ++i)
	{
		// int prev = i-1, next = i+1;
		// if(i == 0) prev = (int)curve.size() - 2;
		float angleCos = Vector3f::dot(curve[i].T , curve[i+1].T)/(curve[i].T.abs()*curve[i+1].T.abs());
		angleCos = 1-pow(angleCos,200);
		cout<<angleCos<<endl;
		recorder->record_poscolor(curve[i].V, YELLOW*angleCos);
		recorder->record_poscolor(curve[i + 1].V, YELLOW*angleCos);
	}
}
void recordCurveFrames(const Curve& curve, VertexRecorder* recorder, float framesize)
{
	Matrix4f T;
	const Vector3f RED(1, 0, 0);
	const Vector3f GREEN(0, 1, 0);
	const Vector3f BLUE(0, 0, 1);
	
	const Vector4f ORGN(0, 0, 0, 1);
	const Vector4f AXISX(framesize, 0, 0, 1);
	const Vector4f AXISY(0, framesize, 0, 1);
	const Vector4f AXISZ(0, 0, framesize, 1);

	for (int i = 0; i < (int)curve.size(); ++i)
	{
		T.setCol(0, Vector4f(curve[i].N, 0));
		T.setCol(1, Vector4f(curve[i].B, 0));
		T.setCol(2, Vector4f(curve[i].T, 0));
		T.setCol(3, Vector4f(curve[i].V, 1));

		// Transform orthogonal frames into model space
		Vector4f MORGN  = T * ORGN;
		Vector4f MAXISX = T * AXISX;
		Vector4f MAXISY = T * AXISY;
		Vector4f MAXISZ = T * AXISZ;

		// Record in model space
		recorder->record_poscolor(MORGN.xyz(), RED);
		recorder->record_poscolor(MAXISX.xyz(), RED);

		recorder->record_poscolor(MORGN.xyz(), GREEN);
		recorder->record_poscolor(MAXISY.xyz(), GREEN);

		recorder->record_poscolor(MORGN.xyz(), BLUE);
		recorder->record_poscolor(MAXISZ.xyz(), BLUE);
	}
}
