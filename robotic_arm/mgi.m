function q=mgi(X,Elbow)     
L1=0.170;
L2=0.3;
L3=0.37;
q=zeros(3,1);
%----------------------------
x=X(1);
y=X(2);
z=X(3);
xx=sqrt(x^2+y^2);
yy=z-L1;
% theta 1
q(1)=atan2(y,x);
% theta 3 
arg3 = ((z - L1)^2 + x^2 + y^2 - L2^2 - L3^2) / (2 * L2 * L3);
arg3 = max(min(arg3,1),-1);
q(3) = acos(arg3);
if(abs(q(3))<0.00001)
    q(3)=0.001;
end
if Elbow >=0
    q(3)=q(3);
else 
    q(3)=-q(3);
end 
% theta 2 

%q(2)=asin(1/(xx^2+yy^2)*(yy*(L2+L3*cos(q(3))-xx*L3*sin(q(3)))));
q(2)=atan((yy*(L2+L3*cos(q(3)))-xx*L3*sin(q(3)))/(xx*(L2+L3*cos(q(3)))+yy*L3*sin(q(3))));
%------------------------------

end
    


	 
