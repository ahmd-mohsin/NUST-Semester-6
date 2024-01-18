% clear
% clc
% %% open loop system
% sys= tf([1],[1 10 20]);
% %% open loop system properties
% stepinfo(sys) %step response information of the open loop system
% abs(1-dcgain(sys)) %steady state error for a step input to the open 
% % %loop system
% 
% clear
% clc
% %% open loop system
% sys= tf([1],[1 10 20]);
% %% open loop system properties
% stepinfo(sys);
% abs(1-dcgain(sys));
% %% proportional controller 
% rlocus(sys)
% Kp=7.6; %proportional gain – YOU HAVE TO SELECT THIS VALUE
% ctrl = zpk([],[],Kp); %define the proportional controller TF
% sys_cl = feedback(series(ctrl,sys),1); %find the closed loop system
% stepinfo(sys_cl)
% rlocus(sys_cl)
% abs(1-dcgain(sys_cl))

% clear
% clc
% %% open loop system
% sys= tf([1],[1 10 20]);
% %% open loop system properties
% stepinfo(sys);
% abs(1-dcgain(sys));
% %% PD controller design
% zero_loc = -15; % CHOOSE THIS VALUE YOURSELF
% compensator = zpk(zero_loc,[],1);
% rlocus(series(compensator,sys));
% Kd= 10; % CHOOSE THIS VALUE YOURSELF
% Kp = -Kd*zero_loc;
% ctrl_p = zpk([],[],Kp); %proportional part of controller
% ctrl_d = zpk(0,[],Kd); %derivate part of controller
% ctrl = parallel(ctrl_p,ctrl_d); % controller TF
% sys_cl = feedback(series(ctrl,sys),1); % closed loop sys
% stepinfo(sys_cl)
% abs(1-dcgain(sys_cl))

% clc
% %% open loop system
% sys= tf([1],[1 10 20]);
% %% open loop system properties
% stepinfo(sys)
% abs(1-dcgain(sys))
% %% PI controller design
% zero_loc = -1; % CHOOSE THIS VALUE YOURSELF
% compensator = zpk(zero_loc,0,1);
% rlocus(series(compensator,sys));
% Kp= 101; % CHOOSE THIS VALUE YOURSELF
% Ki = -Kp*zero_loc;
% ctrl_p = zpk([],[],Kp); %proportional part of controller
% ctrl_i = zpk([],0,Ki); %integral part of controller
% ctrl = parallel(ctrl_p,ctrl_i); % controller TF
% sys_cl = feedback(series(ctrl,sys),1); % closed loop sys
% stepinfo(sys_cl)
% abs(1-dcgain(sys_cl))

clear
clc
%% open loop system
%sys= zpk([],[-8,-1,-3],1);
sys= tf([1],[1 10 20]);
%% open loop system properties
stepinfo(sys)
abs(1-dcgain(sys))
%% PID controller design
zero_loc_pi = -1; % CHOOSE THIS VALUE YOURSELF
zero_loc_pd = -15; % CHOOSE THIS VALUE YOURSELF
compensator = zpk([zero_loc_pi, zero_loc_pd],0,1);
rlocus(series(compensator,sys));
Kd= 40; % CHOOSE THIS VALUE YOURSELF
Kp = -(zero_loc_pd+zero_loc_pi)*Kd;
Ki = zero_loc_pd*zero_loc_pi*Kd;
ctrl_p = zpk([],[],Kp); %proportional part of controller
ctrl_i = zpk([],0,Ki); %integral part of controller
ctrl_d = zpk(0,[],Kd); %derivative part of controller
ctrl = parallel(parallel(ctrl_p,ctrl_i),ctrl_d); % controller TF
sys_cl = feedback(series(ctrl,sys),1); % closed loop sys
stepinfo(sys_cl)
abs(1-dcgain(sys_cl))

clear
clc
%%open loop system
sys = tf([1],[1 10 20]);
%%controller design
Kp =  -(zero_loc_pd+zero_loc_pi)*Kd;
ctrl_p = zpk([],[],Kp);
Ki = zero_loc_pd*zero_loc_pi*Kd;
ctrl_i = zpk([],0,Ki);
Kd=40;
ctrl_d = zpk(0,[],Kd);
ctrl = parallel(parallel(ctrl_p,ctrl_d),ctrl_i);
sys_cl = feedback(series(ctrl,sys),1);
stepinfo(sys_cl)
abs(1-dcgain(sys_cl))

