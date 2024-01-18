num = [1 0 -1];
denom = [1 0 4 6 4]; 
G1 = tf(num, denom)
G2 = zpk(G1)



z = [-4 -2+4i -2-4i];
p = [2 -4 -5i 5i];