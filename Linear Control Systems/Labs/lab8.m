
%% 
 G=zpk([],[-1,-2,-3],1) 
 rlocus(G)
%% 
 K=18;
 Gcl = feedback(series(K,G),1) 
%% Excercise 1
num=[1 4 4.25];
dem=[1 -1 -1 15];
H=tf(num,dem);
rlocus(H);
K2=3.884;
Gcl = feedback(series(K2,H),1);
rlocus(Gcl);
%% Excercise 2
num= 0.0334;
den=[1.566e-5 ,1.11556e-3];
H2=tf(num,den);
rlocus(H2);
stepinfo(H2);
K3=0.0040;
Gcl=feedback(series(K3,H2),1)
stepinfo(Gcl)


 %% Excercise 3
num= 0.0334;
den=[1.566e-5 ,1.11556e-3,0];
H3=tf(num,den);
rlocus(H3);
stepinfo(H3);
k4=.5;
Gcl=feedback(series(k4,H3),1)
stepinfo(Gcl)
%% Excercie 4
num=[1 -2 5];
dem=[1 9 23 15];
H0=tf(num,dem);
figure
rlocus(H0);
num1=[1 5 -9 35];
dem1=[1 2 40 119 78];
H1=tf(num1,dem1);
figure
rlocus(H1);
num2=[1 2];
dem2=[1 9 34 -62 705 793];
H2=tf(num2,dem2);
figure
rlocus(H2);






