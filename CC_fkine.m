function [v]= myfkine(th0,th1,th2) 
% syms th0; syms th1; syms th2;
% 
% syms d0 d1 syms a0 a1 a2
d0=30;
d1=30;
a0=30;
a1=30;
a2=30;

q1=[-cos(th0) sin(th0) 0  0
    -sin(th0) -cos(th0)  0  0
    0       0          1 d0
    0       0          0  1];

q2=[cos(th1+(pi/2)) -sin(th1+(pi/2)) 0  0
    0               0               -1  0
    sin(th1+(pi/2)) cos(th1+(pi/2))  0  0
    0               0                0  1];

q3=[cos(th2) -sin(th2)  0 a1
    sin(th2) cos(th2)   0  0
    0        0          1  0
    0        0          0 1];

tool=[0 0 1 a2
     -1 0 0 0
     0 -1 0 0
     0 0 0 1];
 
 s=q1*q2*q3*tool;
 
 t=s(:,4);
 v=t(1:3,1);
 