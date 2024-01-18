bb = [0.5, 0.5]; %-- Filter Coefficients
ww = -pi:(pi/100):pi; %-- omega hat
HH = freqz(bb, 1, ww); %<--freekz.m is an alternative
subplot(2,1,1);
plot(ww, abs(HH))
subplot(2,1,2);
plot(ww, angle(HH))
xlabel('Normalized Radian Frequency')
