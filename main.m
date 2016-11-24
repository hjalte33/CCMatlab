L1 = Link('d', 30, 'a',   0, 'alpha', (pi/2), 'offset', (pi));
L2 = Link('d',  0, 'a',  30, 'alpha', 0     , 'offset', (pi/2));
L3 = Link('d',  0, 'a',  30, 'alpha', 0     );
tool = [ 0  0 1  0
        -1  0 0  0
         0 -1 0  0
         0  0 0  1];
     
CCBot = SerialLink([L1 L2 L3], 'name', 'CC Bot', 'tool', tool)
pose = solve_ikine(15,10,65)

CCBot.plot(pose)
%CCBot.fkine([0 ,0,0])

%Q0 =[1 0 0 0
%     0 1 0 0
%     0 0 1 0
%     0 0 0 1];
 
mask = [1 1 1 0 0 0];
%CCBot.ikine(T,Q0,mask) 
