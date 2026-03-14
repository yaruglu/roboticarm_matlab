function [Q] = JointTraj_3deg(qi,qf,t,T)

%calculate Q
Q=zeros(3,1);
m=3*(t/T)^2-2*(t/T)^3;
%-------------------------
Q=qi+m*(qf-qi);
%-------------------------

end

