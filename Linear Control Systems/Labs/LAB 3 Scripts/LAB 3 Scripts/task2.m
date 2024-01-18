
%% Variables
J_eq = 1.843e-6;
m = 0.0270;
r = 0.0826;
 
K_g = 1;
J_m = 1.80e-4;
n_g = 1;
n_m = 0.69;
L = 0.0955;
g = 9.9;
K_t = 0.0334;
R = 8.7;
a = J_eq + m * r ^ 2 + n_g * K_g ^ 2 * J_m;
b = m * L * r;
c = (4/3) * m * L ^ 2;
d = m * g * L;
e = 2.7183;
f = (n_m * n_g * K_t * K_g) / R;

%first transfer function
num1=[-c 0 f*d 0];
den1=[(b^2-a*c) -e*c a*d e*d 0];
T1=tf(num1,den1)
%second transfer function
num2=[-c 0 f*d];
den2=[(b^2-a*c) -e*c a*d e*d 0];
T2=tf(num2,den2)
%third transfer function
num = [-b*f 0 0];
den = [(a*c-b^2) e*c -a*d e*d 0];
T3 = tf(num, den)

