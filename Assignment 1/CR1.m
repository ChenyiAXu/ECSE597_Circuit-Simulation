
clear;
clc;
global G
global C
global b

G = zeros(4,4);
C = zeros(4,4);
b = zeros(4,1);

vol(1,0,1);
%disp(G)
%disp(b)
res(1,2,50);
res(4,0,50);
%disp(G)
cap(2,0,0.319e-6);
cap(3,4,63.72e-12);
cap(4,0, 0.319e-6);
%disp(C)
ind(2, 0, 0.317e-6);
ind(2, 3, 1.59e-6);
ind(4, 0, 0.317e-6);
format short e
disp(G)
disp(C)
disp(b)