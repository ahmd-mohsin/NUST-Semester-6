function[xx,tt] = syn_sin()
fk = [1, 1, 1];
Xk = [2*exp(1i*pi), 2*exp(1i*pi*(1-1.25)),(1-1i)*exp(1i*pi)];
fs = 100; % Samples per second
dur = 3/min(abs(fk)); % Total time duration to cover three periods
tstart = -0.5; % Starting time
if nargin < 5
    tstart = 0;
end

if length(fk) ~= length(Xk)
    error('Error: frequency and amplitude vectors must have the same length');
end

dt = 1/fs;
tt = tstart:dt:tstart+dur-dt;

N = length(fk);
xx = zeros(size(tt));

for k = 1:N
    xx = xx + real(Xk(k) * exp(1i * 2 * pi * fk(k) * tt));
end
x_phasor = sum(Xk); % phasor addition of all components
x_magnitude = abs(x_phasor); % magnitude of x(t)
x_phase = angle(x_phasor); % phase of x(t)
fprintf('The magnitude of x(t) is %f\n', x_magnitude);
fprintf('The phase of x(t) is %f rad\n', x_phase);
% Plot the signal
figure;
plot(tt,real(xx));
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Signal x(t)');
grid on;
end



