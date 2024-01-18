num = [1 11 35 250];
denom = [1 4 39 108 0 0]; 
G1 = tf(num, denom)
pzplot(G1)