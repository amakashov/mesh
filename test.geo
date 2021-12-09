lc = 1e-1;
side = 1;

Point(1) = {0,0,0,lc};
Point(2) = {side,0,0,lc};
Point(3) = {side,side,0,lc};
Point(4) = {0, side, 0, lc};
Point(5) = {0,0,side,lc};
Point(6) = {side,0,side,lc};
Point(7) = {side,side,side,lc};
Point(8) = {0, side, side, lc};


For i In {1:4}
    Line(i) = {i, (i % 4)+1};
EndFor
For i In {1:4}
    Line(i+4) = {i+4, (i % 4)+5};
EndFor
For i In {1:4}
    Line(i+8) = {i, i+4};
EndFor

Curve Loop(1) = {1, 2, 3, 4};
Curve Loop(2) = {5, 7, 6, 8};
Curve Loop(3) = {1, 10, -5, -9};
Curve Loop(4) = {2, 11, -6, -10};
Curve Loop(5) = {3, 12, -7, -11};
Curve Loop(6) = {4, 9, -8, -12};

For i In {1:6}
    Plane Surface(i) = {i};
EndFor
// Plane Surface(1) = {1};
// Plane Surface(2) = {2};
// // Physical Surface(1) = {1};
// //+
// Curve Loop(4) = {9, 5, -10, -1};
// //+
// Plane Surface(4) = {4};
// //+
// Curve Loop(5) = {8, -9, -4, 12};
// //+
// Plane Surface(5) = {5};
// //+
// Curve Loop(6) = {11, 7, -12, -3};
// //+
// Plane Surface(6) = {6};
// //+
// Curve Loop(3) = {11, -6, -10, 2};
// //+
// Plane Surface(3) = {3};

// //+
Surface Loop(1) = {3, 6, 2, 4, 5, 1};
// //+
Volume(1) = {1};
