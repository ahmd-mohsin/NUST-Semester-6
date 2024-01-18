% Hasan Rixwn 335753
% Ahmed Mohsin 333060
% Amina Bashir 343489
%Syeda Fatima Zahra 334379

% Define parameters
A_message = 1;    % amplitude = 1V
f_message = 2;    % frequency = 2Hz
A_carrier = 1;
f_carrier = 20;
% Define time vector
t  = linspace(0,1,500);   % time from 0 to 1 second in steps of 0.001

% Generate message signal waveform
message = A_message*cos(2*pi*f_message*t);
carrier = A_carrier*cos(2*pi*f_carrier*t);

% Message Signal  Plot waveform
subplot(311); plot(t,message);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Message Signal Waveform');

% Carrier Signal  Plot waveform
subplot(312);
plot(t,carrier);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Carrier Signal Waveform');
kf = 15;
delta_f = kf*A_message;
index = (delta_f)/(f_message) ;
F_modulating = A_carrier*cos((2*pi*f_carrier*t) + (index*sin(2*pi*f_message*t)) );

% Frequnecy Modulating Signal  Plot waveform
subplot(313);plot(t,F_modulating);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Frequnecy Modulating Signal Waveform');