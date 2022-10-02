% % student number = 22204523
% a = 5;
% b = 2;
% c = 3;
% N = [1 0.9*b];
% D = conv([1 b],[1 2*a+b]);
% G = tf(N,D)
% DC = polyval(N,0)/polyval(D,0) % to find the DC gain (finding the value of polynomial at s=0
% zeros = zero(G)
% poles = pole(G)
% step(G)
% stepinfo(G)


% % student number = 22204523
% a = 5;
% b = 2;
% c = 3;
% N = [1 0.9*b];
% D1 = conv([1 b],[1 2*a+b]);
% G = tf(N,D1)
% %after step repsonse we get s multiplied by the denominator
% D = [1 14 24 0];
% G1 = tf(N,D)
% [R P K] = residue(N,D)
  
% % student number = 22204523
% a = 5;
% b = 2;
% c = 3;
% N1 = [1];
% N2 = [1/9 1];
% D = conv([1 a],[1 a+4*b+3*c]);
% G1 = tf(N1,D)
% G2 = tf(N2,D)
% DC1 = polyval(N1,0)/polyval(D,0) % to find the DC gain 
% DC2 = polyval(N2,0)/polyval(D,0) % to find the DC gain 
% step(G1)
% sys1 = stepinfo(G1)
% figure
% step(G2)
% sys2 = stepinfo(G2)
% [R1 P1 K1] = residue(N1,D)
% [R2 P2 K2] = residue(N2,D)

close all
clear all
clc
kp = 10;
ki = 20;
k = kp
z = ki/kp
N = [1 1.8];
D = conv([1 2],[1 12])
Gp = tf(N,D)
Nc = [1 z];
Np = [1 0];
Gc = tf(k*Nc,Np)
Go = series(Gp,Gc)
Gi = tf([1],[1]) % unity feedback
G = feedback(Go,Gi)
step(G)
stepinfo(G)




 