function [x,t]=one_cos(A,w,phi,dur)
t=0:1/(20*w):dur;
x=A*cos((w*t)+phi);
plot(t,x)
end