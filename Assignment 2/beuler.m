function [tpoints, r] = beuler(t1, t2, h, in, out)
global G 
global C 
global b 

%t1 starting time 
%t2 ending time 
%h step size 
%in: input source cos(2pi 1000t)
%out: output node
%tpoints: time points output was evaluated 
%r: value of the response @tpoints
tpoints = t1:h:t2;
N = length(tpoints);
n = size(G,1);

x = zeros(n,N);               %initialize x
r = zeros(1, N);
r(1) = x(out, 1);             %initial value included

constant = G + C/h;

for a = 1 : N-1
    t = tpoints(a + 1);
    u = eval(in);

    right = b*u + (C/h)*x(:, a);
    x(:, a+1) = constant\right;
    r(a+1) = x(out, a+1);     %output
end                           %end for 

end                           %end function



