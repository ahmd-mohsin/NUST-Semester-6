M = 0.5;
m= 0.5;
b = 0.1;
L = 0.3;
I = 0.006;
q = (M+m)*(I + m*L^2)*(m * L)^2;
g = 9.8;

num = [m*L/q 0 0];
denom = [1   b*(I + m*L^2)/q   -(M+m)*m*g*L/q   -m*g*L/q   0];
F1 = tf(num,denom)