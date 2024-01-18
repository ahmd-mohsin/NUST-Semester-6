
%% Calculation of path loss:
frequency=28e9:0.01e9:30e9;
 %frequency in GHz
D1=30; %distance in meters
Fc=82e9;
A=59.89;%floating point intercept
B=4.51; %slope
Y=8.52; %shadow factor
lambda=3*10e8./frequency;
Lp=((4*pi*D1)./lambda).^2;
path_dB=10*log(Lp);
Lp1=A+B*(10*log(D1)+Y*20*log10(frequency./Fc));
hold on
plot(frequency./1e9,path_dB);
plot(frequency./1e9,Lp1);
xlabel('Frequency (GHz)');
ylabel('Path loss (dB)');
title('Free space path loss for a frequency of 90-150 GHz');
legend('Path loss 1', 'path loss 2')
