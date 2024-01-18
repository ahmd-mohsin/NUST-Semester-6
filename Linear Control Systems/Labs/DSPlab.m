%% Original Signal
[x,Fs] = audioread('sample.wav');
L=length(x);
Fc=Fs/2;
% Next power of 2 from length of y
NFFT = 2^nextpow2(L);
Y = fft(x,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
subplot(2,1,2)
plot(f,2*abs(Y(1:NFFT/2+1));
grid on
title('Single-Sided Amplitude Spectrum of filtered signal')
xlabel('Frequency (Hz)')

%creating butterworth filter
order = 6;
cutoff = Fc/(Fs/2); % where fn is the maximum frequency of the speech signal
[b, a] = butter(order, 0.99, 'low');

%% Downsampling by factor 2
filtered_signal=filter(b,a,x);
downsampled_signal = filtered_signal(1:2:end);

L1=length(downsampled_signal);
NFFT = 2^nextpow2(L1);
Y1 = fft(x,NFFT)/L1;
figure
plot(f,2*abs(Y1(1:NFFT/2+1)));
grid on
title("Single sided Amplitude of downsampled signal");
xlabel("Frequency");

