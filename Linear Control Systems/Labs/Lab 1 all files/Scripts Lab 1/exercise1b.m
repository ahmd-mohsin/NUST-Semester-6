syms s
s1 = 1 / ((s) * (s+2) * (s+3));
ilaplace(s1)

s2 = 10 / ((s + 1)^2 * (s+3));
ilaplace(s2)

s3 = (2 * (s + 1)) / (s * (s^2 + s + 2));
ilaplace(s3)

s4 =  (s + 1) / (s * (s^2 + 2 * s + 2) * (s+2));
ilaplace(s4)