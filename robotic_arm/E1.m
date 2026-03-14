L1=0.170;
L2=0.300;
L3=0.260;
L4=0.11;
%%

w1=out.yout{7}.Values;
w2=out.yout{8}.Values;
w3=out.yout{9}.Values;
subplot(3,1,1);
plot(w1)
legend("w1")
grid on
hold on;
subplot(3,1,2);

plot(w2)
legend("w2")
grid on
subplot(3,1,3);

plot(w3)
grid on 
legend("w3")
xlabel("Time(s)")
ylabel("velocity(rad/s)")

%%
q1=out.yout{10}.Values;
q2=out.yout{11}.Values;
q3=out.yout{12}.Values;
q4=out.yout{13}.Values;

subplot(4,1,1);

plot(q1)
hold on
grid on 
legend("q1")
xlabel("Time(s)")
ylabel("angle(rad)")
subplot(4,1,2);

plot(q2)
grid on 
legend("q2")
xlabel("Time(s)")
ylabel("angle(rad)")
subplot(4,1,3);

plot(q3)
grid on 
legend("q3")
xlabel("Time(s)")
ylabel("angle(rad)")
subplot(4,1,4);

plot(q4)
grid on 
legend("q4")
xlabel("Time(s)")
ylabel("angle(rad)")
title("JointTraj_1deg")

%%
T1=out.yout{7}.Values;
T2=out.yout{8}.Values;
T3=out.yout{9}.Values;
plot(T1)
hold on;
plot(T2)
plot(T3)
grid on 
legend("T1","T2","T3")
xlabel("Time(s)")
ylabel("Torque(N.m)")
title("JointTraj_1deg")
%%
x=out.yout{1}.Values.Data;
y=out.yout{2}.Values.Data;
z=out.yout{3}.Values.Data;
subplot(1,3,1)
plot(x,y)
xlabel("x")
ylabel("y")
grid on
subplot(1,3,2)
plot(x,z)
xlabel("x")
ylabel("z")
grid on
subplot(1,3,3)
plot(y,z)
xlabel("y")
ylabel("z")
grid on
%%
x=out.yout{1}.Values.Data;
y=out.yout{2}.Values.Data;
z=out.yout{3}.Values.Data;
plot3(x,y,z)