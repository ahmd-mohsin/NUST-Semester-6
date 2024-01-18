%% Task 1

%# Clear the workspace and command window
clear
clc

%# Define the numerator and denominator of the open-loop system
num = [25];
den = [1 7.5];

%# Create the transfer function of the open-loop system
sys = tf(num, den);

%#%% Open-loop system properties
%# Get the step response information of the open-loop system
sys_param = stepinfo(sys);

%# Get the steady-state error of the open-loop system
SSError = abs(1-dcgain(sys));

%#%% Proportional controller
%# Plot the root locus of the open-loop system
rlocus(sys);

%# Define the proportional gain
Kp = 0.3;

%# Create the proportional controller
ctrl = zpk([],[],Kp);

%# Create the closed-loop system
sys_cl = feedback(series(ctrl,sys),1);

%# Get the step response information of the closed-loop system
sys_param = stepinfo(sys_cl);

%# Get the steady-state error of the closed-loop system
SSError = abs(1-dcgain(sys_cl));

%% Task 2
%# Clear the workspace and command window
clear
clc

%# Define the numerator and denominator of the open-loop system
num = [25];
den = [1 7.5 0];

%# Create the transfer function of the open-loop system
sys = tf(num, den);

%#%% Open-loop system properties
%# Get the step response information of the open-loop system
sys_param = stepinfo(sys);

%# Get the steady-state error of the open-loop system
SSError = abs(1-dcgain(sys));

%#%% PD controller design
%# Display a message
display('Closed Loop System after PD Controller Design');

%# Define the zero location of the compensator
zero_loc = -15;

%# Create the compensator transfer function
compensator = zpk(zero_loc,[],1);

%# Plot the root locus of the open-loop system with the compensator
rlocus(series(compensator,sys));

%# Define the proportional gain and derivative gain of the controller
Kd = 1;
Kp = -Kd*zero_loc;

%# Create the proportional and derivative parts of the controller
ctrl_p = zpk([],[],Kp); %proportional part of controller
ctrl_d = zpk(0,[],Kd); %derivative part of controller

%# Create the controller transfer function
ctrl = parallel(ctrl_p,ctrl_d);

%# Create the closed-loop system
sys_cl = feedback(series(ctrl,sys),1);

%# Get the step response information of the closed-loop system
sys_param = stepinfo(sys_cl);

%# Get the steady-state error of the closed-loop system
SSError = abs(1-dcgain(sys_cl));

%% Task 3


%# Clear the workspace and command window
clear
clc

%# Define the numerator and denominator of the open-loop system
num = [25];
den = [1 7.5 0];

%# Create the transfer function of the open-loop system
sys = tf(num, den);

%#%% Open-loop system properties
%# Get the step response information of the open-loop system
sys_param = stepinfo(sys);

%# Get the steady-state error of the open-loop system
SSError = abs(1-dcgain(sys));

%#%% PID controller design
%# Display a message
display('Closed Loop System after PID Controller Design');

%# Define the zero locations of the compensator
zero_loc_pi = -1;
zero_loc_pd = -15;

%# Create the compensator transfer function
compensator = zpk([zero_loc_pi, zero_loc_pd],0,1);

%# Plot the root locus of the open-loop system with the compensator
rlocus(series(compensator,sys));

%# Define the proportional, integral, and derivative gains of the controller
Kd = 1;
Kp = -(zero_loc_pd+zero_loc_pi)*Kd;
Ki = zero_loc_pd*zero_loc_pi*Kd;

%# Create the proportional, integral, and derivative parts of the controller
ctrl_p = zpk([],[],Kp); %proportional part of controller
ctrl_i = zpk([],0,Ki); %integral part of controller
ctrl_d = zpk(0,[],Kd); %derivative part of controller

%# Create the controller transfer function
ctrl = parallel(parallel(ctrl_p,ctrl_i),ctrl_d);

%# Create the closed-loop system
sys_cl = feedback(series(ctrl,sys),1); % closed loop sys

%# Get the step response information of the closed-loop system
sys_param = stepinfo(sys_cl);

%# Get the steady-state error of the closed-loop system
SSError_Ramp = abs(1-dcgain(sys_cl));

%# Define the ramp input
ramp = tf([1],[1 0]);

%# Create the ramp-modified closed-loop system
sys_cl1 = series(sys_cl,ramp);

%# Get the step response information of the ramp-modified closed-loop system
sys_param = stepinfo(sys_cl1);

%# Get the steady-state error of the ramp-modified closed-loop system
SSError_Ramp = abs(1-dcgain(sys_cl1));
