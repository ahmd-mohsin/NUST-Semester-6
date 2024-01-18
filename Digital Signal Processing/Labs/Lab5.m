b=[1 0 -1];
a=[1 -0.9 0.80996];
[h,w]=freqz(b,a,4000);
plot(w, abs(h));
