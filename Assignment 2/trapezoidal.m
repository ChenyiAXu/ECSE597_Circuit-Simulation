function [tpoints, r] = trapezoidal(t1, t2, h, in, out)
global G 
global C 
global b 

tpoints = t1:h:t2;
N = length(tpoints);
n = size(G,1);

x = zeros(n,N);               %initialize x
r = zeros(1, N);
r(1) = x(out, 1);             %initial value included

LHS_constant = G + 2*C/h;

RHS_constant = 2*C/h - G;

for a = 1 : N-1

    t = tpoints(a);           % b_n
    u = eval(in);

    t = tpoints(a+1);
    u_next = eval(in);

    right =RHS_constant *x(:, a) + b*u + b*u_next; 
    x(:, a+1) = LHS_constant\right;
    r(a+1) = x(out, a+1);     %output
end                           %end for function
end                           % end function
