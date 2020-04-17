#include "matrixstack.h"

MatrixStack::MatrixStack()
{
	// Initialize the matrix stack with the identity matrix.
	m_matrices.clear();
	m_matrices.push_back(Matrix4f::identity());

}

void MatrixStack::clear()
{
	// Revert to just containing the identity matrix.
	m_matrices.clear();
	m_matrices.push_back(Matrix4f::identity());

}
int MatrixStack::size()
{
	return m_matrices.size();
}
Matrix4f MatrixStack::top()
{
	// Return the top of the stack
	// return Matrix4f();

	// return Matrix4f::identity();
	return m_matrices[size()-1];
}

void MatrixStack::push(const Matrix4f &m)
{
	// Push m onto the stack.
	// The new top should be "old * m", so that conceptually the new matrix
	// is applied first in right-to-left evaluation.
	Matrix4f t = top() * m;
	m_matrices.push_back(t);
}

void MatrixStack::pop()
{
	// Remove the top element from the stack
	m_matrices.pop_back();
}
