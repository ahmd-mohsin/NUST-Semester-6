

% Example
% my_tf = tf(1,[1 2]);
% stepinfo(my_tf)
% steady_state_error=abs(1-dcgain(my_tf));
%% Excercise 1
% num1=[2 2];
% dem1=[1 9 20];
% tf1=tf(num1,dem1);
% stepinfo(tf1);
% steadyerror1=abs(1-dcgain(tf1));
% num2=[1 1];
% dem2=[1 12 47 60];
% tf2=tf(num2,dem2);
% stepinfo(tf2);
% steaderror2=abs(1-dcgain(tf2));
% num3=[1];
% dem3=[1 10];
% tf3=tf(num3,dem3);
% stepinfo(tf3);
% steadyerror3=abs(1-dcgain(tf3));
%% Task 2
% clc
% clear
% close
% hold on;
% sys1 = zpk([],-1,1);
% tf1=tf(sys1);
% step(ss(sys1));
% sys2 = zpk([],-2,2);
% tf2=tf(sys2);
% step(ss(sys2));
% sys3 = zpk([],-5,5);
% tf3=tf(sys3);
% step(ss(sys3)); 
% sys4 = zpk([],-10,10);
% tf4=tf(sys4);
% step(ss(sys4));
% legend('p=-1','p=-2','p=-5','p=-10');
% 
% stepinfo(sys1)
% steadyerror1=abs(1-dcgain(tf1))
% stepinfo(sys2)
% steadyerror2=abs(1-dcgain(tf2))
% stepinfo(sys3)
% steadyerror3=abs(1-dcgain(tf3))
% stepinfo(sys4)
% steadyerror4=abs(1-dcgain(tf4))

%% Task 3
% clc
% clear
% close
% hold on;
% sys1 = zpk([],-5,1);
% tf1=tf(sys1);
% step(ss(sys1));
% sys2 = zpk([],-5,2);
% tf2=tf(sys2);
% step(ss(sys2));
% sys3 = zpk([],-5,5);
% tf3=tf(sys3);
% step(ss(sys3)); 
% sys4 = zpk([],-5,10);
% tf4=tf(sys4);
% step(ss(sys4));
% legend('p=-1','p=-2','p=-5','p=-10');
% 
% stepinfo(sys1)
% steadyerror1=abs(1-dcgain(tf1))
% stepinfo(sys2)
% steadyerror2=abs(1-dcgain(tf2))
% stepinfo(sys3)
% steadyerror3=abs(1-dcgain(tf3))
% stepinfo(sys4)
% steadyerror4=abs(1-dcgain(tf4))
%% Excercise 4
% clc
% clear
% close
% hold on;
% sys1 = zpk(-1,-5,1);
% tf1=tf(sys1);
% step(ss(sys1));
% sys2 = zpk(-2,-5,1);
% tf2=tf(sys2);
% step(ss(sys2));
% sys3 = zpk(-5,-5,1);
% tf3=tf(sys3);
% step(ss(sys3)); 
% sys4 = zpk(-10,-5,1);
% tf4=tf(sys4);
% step(ss(sys4));
% legend('p=-1','p=-2','p=-5','p=-10');
% 
% stepinfo(sys1)
% steadyerror1=abs(1-dcgain(tf1))
% stepinfo(sys2)
% steadyerror2=abs(1-dcgain(tf2))
% stepinfo(sys3)
% steadyerror3=abs(1-dcgain(tf3))
% stepinfo(sys4)
% steadyerror4=abs(1-dcgain(tf4))

%% Task 5
% risetime=[0.1 0.5 1];
% pole=2./risetime;
% settlingtime=[1 1.5 2];
% pole1=4./settlingtime;

%% practice 6
% my_tf = tf(1,[1 -4 5]);
% damp(my_tf)


%% Task 6
% tf1=tf(5,[1 -4 5]);
% tf2=tf(2,[1 -2 2]);
% tf3=tf(5,[1 -2 5]);
% damp(tf1)
% damp(tf2)
% damp(tf3)

%% Task 8
% syms s;
% prompt1="What is the natural Frequency ";
% prompt2="What is the Damping Ratio ";
% naturalfrequency=input(prompt1);
% dampingratio=input(prompt2);
% 
% Tf=(naturalfrequency^2)/(s^2+2*dampingratio*s*naturalfrequency+naturalfrequency^2)


%% Task 7

% syms s;
% prompt1="What is the b ";
% prompt2="What is the a ";
% b=input(prompt1);
% a=input(prompt2);
% 
% Tf=(b)/(s^2+2*s*a+b)

%% Task 9
% prompt1="What is the natural Frequency ";
% prompt2="What is the Damping Ratio ";
% naturalfrequency1=input(prompt1);
% dampingratio1=input(prompt2);
% naturalfrequency2=input(prompt1);
% dampingratio2=input(prompt2);
% naturalfrequency3=input(prompt1);
% dampingratio3=input(prompt2);
% naturalfrequency4=input(prompt1);
% dampingratio4=input(prompt2);
% 
% Tf1=tf([naturalfrequency1^2],[1 2*dampingratio1*naturalfrequency1 naturalfrequency1^2]);
% Tf2=tf([naturalfrequency2^2],[1 2*dampingratio2*naturalfrequency2 naturalfrequency2^2]);
% Tf3=tf([naturalfrequency3^2],[1 2*dampingratio3*naturalfrequency3 naturalfrequency3^2]);
% Tf4=tf([naturalfrequency4^2],[1 2*dampingratio4*naturalfrequency4 naturalfrequency4^2]);
% hold on;
% step(Tf1,10)
% step(Tf2,10)
% step(Tf3,10)
% step(Tf4,10)
% stepinfo(Tf1)
% stepinfo(Tf2)
% stepinfo(Tf3)
% stepinfo(T43)

%% Excerice 10
% OS=10;
% Ts=.01;
% Zeta = -(log(OS/100))/sqrt((log(OS/100))^2 + pi^2)
% Wn = 4/(Zeta*Ts)

%% task 11
% num=[1];
% dem=[1 1 1];
% tf1=tf(num,dem);
% hold on;
% damp(tf1);
% step(tf1);
% stepinfo(tf1);
% num1=[1 1];
% dem1=[1 1 1];
% tf2=tf(num1,dem1);
% damp(tf2);
% step(tf2);
% stepinfo(tf2);

%% Task 12
% tf_a = zpk([], -1, 1);
% tf_b = zpk([], [-1 -2], 2);
% tf_c = zpk([], [-1 -10], 10);
% tf_d = zpk([], [-1 -20], 20);
% tf_e = zpk([], [-1 -10-5*1i -10+5*1i], 125);
% figure
% t = 0:0.01:8;
% hold on
% step(tf_a, t)
% step(tf_b, t)
% step(tf_c, t)
% step(tf_d, t)
% step(tf_e, t)
% grid
% legend('tf_a', 'tf_b', 'tf_c', 'tf_d', 'tf_e')

%% Task 13
% tf_a = zpk([], [-1-2*1i -1+2*1i], 5);
% tf_b = zpk([], [-1 -1-2*1i -1+2*1i], 5);
% tf_c = zpk([], [-5 -1-2*1i -1+2*1i], 25);
% tf_d = zpk([], [-20 -1-2*1i -1+2*1i], 100);
% figure
% t = 0:0.01:8;
% hold on
% step(tf_a, t)
% step(tf_b, t)
% step(tf_c, t)
% step(tf_d, t)
% grid
% legend('tf_a', 'tf_b', 'tf_c', 'tf_d')
%%
syms T_s T_p p_OS zeta w_n;
eq1 = T_s == 4/(zeta*w_n);
eq2 = T_p == pi/(w_n*sqrt(1-zeta^2));
eq3 = p_OS == 100*exp(-(zeta*pi/sqrt(1-zeta^2)));
eq4 = zeta == -log(p_OS/100)/(sqrt(pi^2+(log(p_OS/100))^2));
eq4 = subs(eq4, p_OS, 10);
zet= double(solve(eq4, zet));
eq1 = subs(eq1, {T_s, zet}, [1, ze]);
wn = double(solve(eq1, wn));



