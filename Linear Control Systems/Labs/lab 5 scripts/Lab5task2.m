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
