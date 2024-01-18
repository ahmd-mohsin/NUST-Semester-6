%% task 1
fs=44100;
t=-.1/2:1/fs:0.1/2;
f=10*fs/1024;
x=cos(2*pi*f*t);
plot(t,x);
%% task 2
plot((1:1024),x(1:1024));
xlabel("1024 samples");

%% task 3
% centralizing it to origin
n=-512:512-1;
N=1024;
x1=fftshift(fft(x,N));
%plotting it to against n
stem(n,abs(x1));

%% task 4
df=fs/2;
i=-N/2:N/2-1;
fin=(df*i)/fs;
plot(fin,abs(x1));
%% task 5
df=fs/2;
i=-N/2:N/2-1;
fin=(df*i);
plot(fin,abs(x1));

%% task 6
x2=sin(2*pi*10.25*44100/1024*t );
x3=sin(2*pi*13.25*44100/1024*t );
x_2=fftshift(fft(x2,N));
x_3=fftshift(fft(x3,N));
figure
stem(fin,abs(x_2));
figure
stem(fin,abs(x_3));
%% task 7
N=2048;
df=fs/N;
i=-N/2:N/2-1;
fin=(i*df);
x1=fftshift(fft(x,N));
x_2=fftshift(fft(x2,N));
x_3=fftshift(fft(x3,N));
figure
plot(fin,abs(x1));
figure
plot(fin,abs(x_2));
figure
plot(fin,abs(x_3));

%% task 8
xc=50*x2+15*x3;
N=1024;
Xc=fftshift(fft(xc,N));
df=fs/N;
i=-N/2:N/2-1;
stem(fin,abs(Xc));


%% task 9
%% task 10

