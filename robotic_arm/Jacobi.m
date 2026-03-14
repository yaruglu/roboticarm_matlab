function [J] = Jacobi(q)
L1=0.170;
L2=0.300;
L3=0.260;
L4=0.11;
x1=(L2*cos(q(2))+L3*cos(q(2)+q(3))+L4*cos(q(2)+q(3)+q(4)));
x2=L2*sin(q(2))+L3*sin(q(2)+q(3))+L4*sin(q(2)+q(3)+q(4));
x3=L3*sin(q(2)+q(3))+L4*sin(q(2)+q(3)+q(4));
x4=L4*sin(q(2)+q(3)+q(4));
J=[-sin(q(1))*x1 -cos(q(1))*x2 -cos(q(1))*x3  -cos(q(1))*x4;
    cos(q(1))*x1 -sin(q(1))*x2 -sin(q(1))*x3  -sin(q(1))*x4;
    0 x1 x1-L2*cos(q(2)) L4*cos(q(2)+q(3)+q(4));
    0 1 1 1]

end

