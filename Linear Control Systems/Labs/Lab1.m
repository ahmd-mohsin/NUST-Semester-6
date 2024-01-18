syms s; %Define variable in symbolic form 
g1t = 5*t*exp(-5*t); %Function in time domain 
G1s = laplace(g1t);%Find Laplace, notice no semicolon
ilaplace(G1s);
G2s=10/((s+1)^2*(s+3));
ilaplace(G2s);
%%
num = [5 10]; %(coefficients of numerator) 
den = [1 7 12]; %(coefficients of denominator) 
G1 = tf (num,den); %(make transfer function) 
[z, p, k] = tf2zp(num, den);
%%
z = [-2]; %(zeros) 
p = [-3 -4]; %(poles) 
k = 5; %(gain) 
G2 = zpk (z,p,k); %(make transfer function) ]

num3=[30 -180];
den3=[1 4 13 7];
G3=tf(num3,den3);
[z, p, k] = tf2zp(num3, den3);
G31=zpk(num3,den3,k)

%%
pzplot(G31); %plot the poles and zeros

%%


