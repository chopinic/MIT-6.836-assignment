# MIT-6.836-assignment1


## Function problem:

Haven't implement Slide controlling rotation angle, because the camera class computes a confusing rotation matrix.

Also not implement Slide controlling depth angle, for the same reason.

Haven't implement rotate with Mouse wheel ( Mac touch pad has no mouse wheel ).

Have problem with emit signal in the initialization function of GLWidget. Can't sync Slides' value with the GLWidget's setting value when initializing.

Haven't implement 2 more mode selection with Combox due to laziness ( aka PointMode and CurveMode ).

## Further Knowledge:

Qt moc mechanism

Qt slot mechanism

Using command "qmake -profile" to generate Qt .pro file, which has problems when building. Now I can only build it with Cmake. Figure out why.

## Other future work: ( maybe never )

Make the curve's Normals and Binormals meet at both ends.

Use mouse to select control points and edit it

Implement other surface division algorithm


