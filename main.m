L1 = Link('d', 25, 'a',   0, 'alpha', (pi/2));
L2 = Link('d',  0, 'a',  25, 'alpha', 0     , 'offset', (pi/2));
L3 = Link('d',  0, 'a',  25, 'alpha', 0     );
tool = [ 0  0 1  0
        -1  0 0  0
         0 -1 0  0
         0  0 0  1];
     
CCBot = SerialLink([L1 L2 L3], 'name', 'CC Bot', 'tool', tool)
pose = solve_ikine(20,20,40)

CCBot.plot(pose)
CCBot.fkine(pose)

%Q0 =[1 0 0 0
%     0 1 0 0
%     0 0 1 0
%     0 0 0 1];
 
mask = [1 1 1 0 0 0];
%CCBot.ikine(T,Q0,mask) 
