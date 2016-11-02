syms x1;
syms x2;
syms x3;
%syms d1;
%syms a2;

%x1=1
%x2=1
%x3=1
d1=25
a2=20 

q1=[cos(x1) -sin(x1) 0 0
    sin(x1) cos(x1)  0 0
    0       0        1 d1
    0       0        0 1];

q2=[cos(x2+(pi/2)) -sin(x2+(pi/2))  0  0
    0              0               -1  0
    sin(x2+(pi/2)) cos(x2+(pi/2))   0  0
    0              0                0  1];

q3=[cos(x3) -sin(x3) 0 a2
    sin(x3) cos(x3)  0 0
    0        0       1 0
    0        0       0 1];

tool=[0 0 1 20
     -1 0 0 0
     0 -1 0 0
     0 0 0 1];
 s=q1*q2*q3*tool