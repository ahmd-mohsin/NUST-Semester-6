% Digital Bandpass Filter Design

% Given Specifications:
w1s = 0.2*pi; As = 60; % Lower Stopband Edge
w1p = 0.35*pi; Rp = 1; % Lower Passband Edge
w2p = 0.65*pi; % Upper Passband Edge
w2s = 0.8*pi; As = 60; % Upper Stopband Edge

% Step 1: Find Transition Width
delta_w = min(w1p-w1s, w2s-w2p);

% Step 2: Calculate M
M = ceil((As-8)/(2.285*delta_w)+1);

% Step 3: Create Ideal Bandpass Filter
wc1 = (w1p+w1s)/2;
wc2 = (w2p+w2s)/2;
hd1 = ideal_lp1(wc2*pi,M);
hd2 = ideal_lp1(wc1*pi,M);
hd = hd2 - hd1;

% Step 4: Implement Appropriate Window
w = kaiser(2*M+1, 5.653);

% Step 5: Multiply Window Coefficient with Ideal Bandpass Filter
h = hd .* w;

% Step 6: Plot Ideal Impulse Response
figure(1)
n = 0:length(hd)-1;
stem(n, hd, 'filled')
title('Ideal Impulse Response')
xlabel('n')
ylabel('hd(n)')

% Step 7: Plot Actual Impulse Response
figure(2)
n = 0:length(h)-1;
stem(n, h, 'filled')
title('Actual Impulse Response')
xlabel('n')
ylabel('h(n)')

% Step 8: Plot Frequency Response
figure(3)
[H, w] = freqz(h, 1, 1024);
magH = 20*log10(abs(H));
plot(w/pi, magH)
grid on
axis([0 1 -80 10])
title('Frequency Response')
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')


function hd=ideal_lp1(wc,M)
% Define filter parameters
n = -(M-1)/2:(M-1)/2;
hd = sin(wc*n)./(pi*n);

% Set the DC term of the impulse response to 1
hd((M+1)/2) = wc/pi;

end
