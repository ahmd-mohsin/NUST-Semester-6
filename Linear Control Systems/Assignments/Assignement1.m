syms x y z s T J1_eq J2_eq D Deq N1 N2 Theta_1 Theta_2 K 
Theta_2 = N1/N2 * Theta_1;

eqn1=(J1_eq*s^2+K)*x-(K)*y==T;
eqn2=-(K)*x+(D*s+K)*y-(D*s)*z==0;
eqn3=-(D*s)*y+(J2_eq*s^2+(D+Deq)*s)*z==0;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z]);
X = linsolve(A,B);
Answer=X(3)/T;
display(Answer);
% for plot we need to have numeric data

% num=[D*J2_eq J2_eq*K+D*Deq D*K+Deq*K];
% dem=[D*J1_eq*J2_eq D*Deq*J1_eq+J1_eq*J2_eq*K D*J1_eq*K+D*J2_eq*K+Deq*J1_eq*K D*Deq*K 0 0 ];
% Transfer_fucntion=tf(num,dem);
% % pzplot(Transfer_fucntion);
% % step(Transfer_fucntion);



