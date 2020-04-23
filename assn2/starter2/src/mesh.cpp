#include "mesh.h"

#include "vertexrecorder.h"

using namespace std;

void Mesh::load(const char *filename)
{
	// 4.1. load() should populate bindVertices, currentVertices, and faces
	ifstream in;
	char buffer[MAX_BUFFER_SIZE];
	in.open(filename);
	while (in.getline(buffer, MAX_BUFFER_SIZE))
	{
		string s;
		stringstream ss(buffer);
		Vector3f temp;
		GLuint t;
		ss >> s;
		if (s == "v")
		{
			ss >> temp[0] >> temp[1] >> temp[2];
			bindVertices.push_back(temp);
		}
		else if (s == "vn")
		{
			ss >> temp[0] >> temp[1] >> temp[2];
			// vecn.push_back(temp);
		}
		else if (s == "f")
		{
			Tuple3u face;
			ss >> face[0] >> face[1] >> face[2];
			for (int k = 0; k < 3; k++)
				face[k]--;
			faces.push_back(face);
		}
	}
	in.close();
	cout << "Reading done. Total "<<bindVertices.size()<<" vertices." << endl;

	// make a copy of the bind vertices as the current vertices
	currentVertices = bindVertices;

	// calculate face normals
	for (int i = 0; i < faces.size(); i++)
	{
		Vector3f nor, a1, a2;
		for (int ii = 0; ii < 3; ii++)
		{
			vertexCot[faces[i][ii]].push_back(i);
		}
		Vector3f v0 = currentVertices[faces[i][0]];
		Vector3f v1 = currentVertices[faces[i][1]];
		Vector3f v2 = currentVertices[faces[i][2]];
		a1 = v1 - v0;
		a2 = v2 - v1;
		nor = Vector3f::cross(a1, a2);
		faceNormals.push_back(nor);
	}

}

void Mesh::draw()
{
	// 4.2 Since these meshes don't have normals
	// be sure to generate a normal per triangle.
	// Notice that since we have per-triangle normals
	// rather than the analytical normals from
	// assignment 1, the appearance is "faceted".
	VertexRecorder vr;
	Vector3f color = Vector3f(1, 0, 0);	
	
	// update face normals
	for (int i = 0; i < faces.size(); i++)
	{
		Vector3f a1, a2;
		Vector3f v0 = currentVertices[faces[i][0]];
		Vector3f v1 = currentVertices[faces[i][1]];
		Vector3f v2 = currentVertices[faces[i][2]];
		a1 = v1 - v0;
		a2 = v2 - v1;
		faceNormals[i] = Vector3f::cross(a1, a2);
	}

	for (int i = 0; i < faces.size(); i++)
	{
		
		for (int k = 0; k < 3; k++)
		{
			Vector3f aveNor;
			int v = faces[i][k];
			for (int ii = 0; ii < vertexCot[v].size(); ii++)
			{
				aveNor+=faceNormals[vertexCot[v][ii]];
			}
			aveNor.normalize();
			vr.record(currentVertices[v], aveNor, color);
		}
	}
	vr.draw(GL_TRIANGLES);
}

void Mesh::loadAttachments(const char *filename, int numJoints)
{
	// 4.3. Implement this method to load the per-vertex attachment weights
	// this method should update m_mesh.attachments
	ifstream in;
	char buffer[MAX_BUFFER_SIZE];
	in.open(filename);
	while (in.getline(buffer, MAX_BUFFER_SIZE))
	{
		string s;
		stringstream ss(buffer);
		vector<float> weight;
		weight.push_back(0);
		float t;
		for (int i = 0; i < numJoints - 1; i++)
		{
			ss >> t;
			weight.push_back(t);
		}
		attachments.push_back(weight);
	}
	in.close();
}
