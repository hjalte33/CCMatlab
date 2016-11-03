L1 = Link('d', 25, 'a',   0, 'alpha', (pi/2));
L2 = Link('d',  0, 'a',  20, 'alpha', 0     , 'offset', (pi/2));
L3 = Link('d',  0, 'a',   0, 'alpha', 0     );
tool = [ 0  0 1 20
        -1  0 0  0
         0 -1 0  0
         0  0 0  1];
     
CCBot = SerialLink([L1 L2 L3], 'name', 'CC Bot', 'tool', tool)
pose = solve_ikine(14,14,35)

CCBot.plot([ 0.78539816339744830961566084581988, -0.58155227771298526690567914444854, 0.93725816054529012112776308455688])
%T = CCBot.fkine(pose)

%Q0 =[1 0 0 0
%     0 1 0 0
%     0 0 1 0
%     0 0 0 1];
 
mask = [1 1 1 0 0 0];
%CCBot.ikine(T,Q0,mask) 
