function [vector] = myikine (x, y, z)
    %syms d1 d2;
    d1=25;
    d2=20;
    syms tth0 tth1 tth2;
    
    lx = sqrt(d1^2 + d2^2 - 2*d1*d2*cos(pi-tth2));
    thx= (((pi-tth2)*d2) / lx)+tth1 ;
    
    eqn1 = x == sin(thx)*lx*cos(tth0);
    eqn2 = y == sin(thx)*lx*sin(tth0);
    eqn3 = z == cos(thx)*lx
    
    sol = solve([eqn1, eqn2, eqn3],[tth0, tth1, tth2]);
 
    th0 = sol.tth0;
    th1 = sol.tth1;
    th2 = sol.tth2;
    
    vector =[th0, th1, th2];

end