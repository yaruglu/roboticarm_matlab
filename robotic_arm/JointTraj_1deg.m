function [Q] = JointTraj_1deg(qi,qf,t,T)

%calculate Q
Q=zeros(3,1);
m=t/T;
%-------------------------
Q=qi+m*(qf-qi);
%-------------------------

end

