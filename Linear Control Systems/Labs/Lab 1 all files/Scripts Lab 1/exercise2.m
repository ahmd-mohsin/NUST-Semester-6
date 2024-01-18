num = [5 10]; %(coefficients of numerator) 
den = [1 7 12]; %(coefficients of denominator) 
G1 = tf(num,den) %(make transfer function) 
[z, p, k] = tf2zp(num,den)