function vcvs(nd1, nd2, ni1, ni2, val)
%note for vccs use as op am 
% nd1 would be k which is 0
% and nd2 would be out which is kprim
% ni1 would be + end 
% ni2 would be -end

global G
global b
global C

d = size(G,1);
xr = d+1;

% Expand system
b(xr) = 0;
G(xr,xr) = 0;
C(xr,xr) = 0;

if nd1 ~= 0
    G(nd1,xr) = G(nd1,xr) + 1;
    G(xr,nd1) = G(xr,nd1) + 1;
end

if nd2 ~= 0
    G(nd2,xr) = G(nd2,xr) - 1;
    G(xr,nd2) = G(xr,nd2) - 1;
end

if ni1 ~= 0
    G(xr,ni1) = G(xr,ni1) - val;
end

if ni2 ~= 0
    G(xr,ni2) = G(xr,ni2) + val;
end

end
