syms t
g1 = (t * sin( 2 * t) + exp(-2*t));
laplace(g1)

g2 = sin(2 * t) * cos(2 * t);
laplace(g2)

g3 = exp (-t) * cos(3 * t);
laplace(g3)

g4 = -exp(-t) + 9 * t * exp(-t) + 5 * exp(-2 * t) + t - 2 ;
laplace(g4)

g5 = 5 * (t ^ 2) * cos( 3 * t + 45);
laplace(g5)

