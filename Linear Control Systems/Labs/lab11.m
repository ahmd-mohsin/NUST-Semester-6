%% Designing a Low pass Chebyshev Filter

% The given Specifications are
w_p=0.4*pi;
w_s=0.6*pi;
ripple=0.01;
Ap=-log10(0.01); % at w=wp (Ripple Magnitude)
Ar=-20*log10(0.001); % At wr=0.6pi (Rejection magnitude)
ebsilion= sqrt((10^(0.1*Ap)-1));

%Finding ratio wp/wr;
k=w_p/w_s;

% finding d
d=ebsilion/sqrt((10^(0.1*Ar)-1));
% Finding filter order
n=floor(acosh(1/d)/acosh(1/k));

% calculating y
y=(1/n)*(asinh(1/ebsilion));
a=sinh(y);
b=cosh(y);

%% Plotting the filter by using the calculated values


[b,a]=cheby1(n,ebsilion,(w_p/pi));
freqz(b,a,1000);
axis([-inf inf -100 0])
xticks([0 0.2  0.4  0.6  0.8  0.99])
xticklabels({'0', '0.2\pi', '0.4\pi', '0.6\pi', '0.8\pi', '\pi'})
xlabel('Frequency (rad)');
ylabel('Magnitude (dB)');
title('Magnitude Response of Chebyshev I Filter N = 8 (dB)');
