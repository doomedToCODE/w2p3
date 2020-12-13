Kp = 1;
Ki = 1;
Kd = 1;
s = tf('s');
P = 1/(s^2 + 10*s + 20);
step(P)

C = pid(Kp,Ki,Kd)
T = feedback(C*P,1);

t = 0:0.01:2;
step(T,t)