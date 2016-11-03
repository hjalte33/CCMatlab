function [vector] = myikine (x, y, z2)
    z = z2 - 25;
    d1 = 25;
    d2 = 25;
    dx  = sqrt(x^2+y^2+z^2);
    th0 = atan(y/x);
    th1 = (pi/2)-atan2(z/sqrt(x^2+y^2),z)-acos((d1^2+dx^2-d2^2)/(2*d1*dx));
    th2 = pi - acos((d1^2+d2^2-dx^2)/(2*d1*d2));
    
    vector =[th0, th1, th2];

end