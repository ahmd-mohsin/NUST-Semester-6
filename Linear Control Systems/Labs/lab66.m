% bb = [0.5, 0.5]; %-- Filter Coefficients
% ww = -pi:(pi/100):pi; %-- omega hat
% HH = freqz(bb, 1, ww);%<--freekz.m is an alternative
% subplot(2,1,1);
% plot(ww, abs(HH))
% title('Magnitude Response');
% subplot(2,1,2);
% plot(ww, angle(HH))
% title('Phase response');
% xlabel('Normalized Radian Frequency');
% 
% % %% Task 2
% n=-7:7;
% % defining the input
% x=(n==0);
% stem(x) %plotting the input 
% L=4;
% yn=zeros(1,length(n));
% 
%  %% Task 2.b
%  w=-pi:pi/400:pi;
%  Hej=((2*cos(0.5*w)+2*cos(1.5*w))/4).*exp(-1i*1.5*w);
%  figure
%  plot(w,abs(Hej));
%  title('Magnitude Resposne');
%  figure
%  plot(w,angle(Hej));
%  title("phase Response");
% 
%  % Task 2.c
% w=-pi:pi/400:pi;
% bb = 1/4*ones(1,4);
% Overall_resp=freqz(bb,1,w);
% figure
% plot(w,abs(Overall_resp));
% title("Magnitude Response");
% figure
% plot(w,angle(Overall_resp));
% title("Phase Response");
% 
% % Task FIND function
% mag_zero=find(abs(Hej)<1e-6);
% 
% % Task 6.1.5
% n=0:9;
% a=0.8;
% b1=a.^n;
% w=-pi:pi/400:pi;
% H1=freqz(b1,1,w);
% figure
% plot(w,abs(H1));
% title("Magnitude Response");
% figure
% plot(w,angle(H1));
% title("Phase Response");
% 
% defining second fucntion
% b2=[1,-a,zeros(1,8)];
% H2=freqz(b2,1,w);
% figure
% plot(w,abs(H2));
% title("Magnitude Response");
% figure
% plot(w,angle(H2));
% title("Phase Response");
% %
% Overall_resp = H1.*H2;
% figure
% subplot(2, 1, 1);
% plot(w, abs(Overall_resp))
% title('Magnitude Response')
% grid
% subplot(2, 1, 2);
% plot(w, angle(Overall_resp))
% title('Phase Response')
% xlabel('Normalized Frequency')
% grid
% 
% %
% Define the filter coefficients
% b1 = [1, -2*cos(0.44*pi), 1];
% b2 = [1, -2*cos(0.7*pi), 1];
% 
% Compute the combined filter coefficients
% b = conv(b1, b2);
% 
% Define the frequency vector
%  w = -pi:(pi /150):pi;
% 
% 
% Compute the frequency response of the filter
% H = freqz(b, 1, w);
% 
% Plot the magnitude response
% subplot(2, 1, 1);
% plot(w, abs(H));
% title('Magnitude Response');
% xlabel('Normalized Radian Frequency');
% ylabel('Magnitude');
% grid on;
% 
% Plot the phase response
% subplot(2, 1, 2);
% plot(w, angle(H));
% title('Phase Response');
% xlabel('Normalized Radian Frequency');
% ylabel('Phase (radians)');
% grid on;
% 
% % 
% n=0:1:150;
% y=10.*cos(0.3*pi*(n+3));
% figure
% stem(n,y);
% xlabel("Sample points");
% ylabel("Stem Output");

% f = 3000;  % frequency in Hz
% t = 0.000009418 * 2*pi*f;  % convert time to radians
% y = 30000*cos(2*pi*f*t) - 40000*sin(2*pi*f*2*t);
% y_max = max(y);
% syms x
% t=-pi:pi/100:pi;
% f = 30000*cos(2*pi*t*3000)-40000*sin(2*pi*t*2000);
% f2 = diff(f,x)==0;
% extreme_points = solve(f2,x);
% extreme_values = subs(f, x, extreme_points);
% [maxX, maxidx] = max(extreme_values);
% % best_location = extreme_points(maxidx);
% % best_value = simplify(maxX, 'steps', 50);
f = 3000;  % frequency in Hz
y = @(t) -(30000*cos(2*pi*f*t) - 40000*sin(2*pi*f*2*t));  % define the function to be minimized
tmax = fminbnd(y, -1/f, 1/f);  % find the value of t that minimizes -y within the range of -1/f to 1/f
ymax = -y(tmax);  % calculate the maximum value of y
fprintf('The maximum value of y is %f at t = %f\n', ymax, tmax);
