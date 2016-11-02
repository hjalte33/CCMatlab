function [th1, th2, th3] = myikine (x, y, z)
    %syms d1 d2;
    d1=25;
    d2=20;
    syms tth1 tth2 tth3;
    
    lx = d1^2 + d2^2 - 2*d1*d2*cos(pi-tth3);
    thx= ((pi*d2) / lx)+tth2 ;
    
    eqn1 = x == sin(thx)*cos(tth1)*lx
    eqn2 = y == sin(thx)*sin(tth1)*lx
    eqn3 = z == cos(thx)*lx
    
    sol = solve([eqn1, eqn2, eqn3],[tth1, tth2, tth3]);
    
    th1 = sol.tth1
    th2 = sol.tth2
    th3 = sol.tth3

end