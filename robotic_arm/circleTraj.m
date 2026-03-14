function [Q] = circleTraj(r,x0,t,T)
m=3*(t/T)^2-2*(t/T)^3;
x=zeros(3,1);
x(1)=x0(1)+r*cos(2*pi*m);
x(2)=x0(2)+r*sin(2*pi*m);
x(3)=x0(3);
Q=mgi(x,1);
end

