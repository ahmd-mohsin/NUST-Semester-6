% Variables
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
% Motor speed
num = [-c 0 f*d 0];
den = [(b^2-a*c) -e*c a*d e*d 0];
speed_tf = tf(num, den);
% Motor position
num = [-c 0 f*d];
den = [(b^2-a*c) -e*c a*d e*d 0];
position_tf = tf(num, den);

% Pendulum arm angle
num = [-b*f 0 0];
den = [(a*c-b^2) e*c -a*d e*d 0];
arm_tf = tf(num, den);

speed_ss = ss(speed_tf);
position_ss = ss(position_tf);
arm_ss = ss(arm_tf);
figure
step(speed_tf)
grid
title('Motor Speed Step Response')

figure
step(position_tf)
grid
title('Motor Position Step Response')

figure
step(arm_tf)
grid
title('Pendulum Arm Angle Step Response')

figure
impulse(speed_ss)
title("Speed Impulse Response")
figure
impulse(position_ss)

title("Position Impulse Response")

figure
impulse(arm_ss)
title("Arm Impulse Response")

t = 0:0.001:5;
u_ramp = t; % ramp
u_square = square(t); % square
u_sine = sin(t); % sine
figure
lsim(speed_ss, u_ramp, t)
grid
figure
title('Motor Speed Ramp Response')
lsim(speed_ss, u_square, t)
grid
title('Motor Speed Square Response')
figure
lsim(speed_ss, u_sine, t)
grid
title('Motor Speed Sine Response')

K = 5;
sys = feedback(speed_tf, K);
display(sys)



