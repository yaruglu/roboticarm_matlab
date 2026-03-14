function [Q] = Line_CartesianTr(xi,xf,t,T)
m=3*(t/T)^2-2*(t/T)^3;
x=xi+m*(xf-xi);
Q=mgi(x,1);
end

