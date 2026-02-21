function opa(inplus, inminus, out)
global G
global b
global C

d = size(G,1);     % current size
xr = d+1;          % new row index

b(xr) = 0;         % expand b
G(xr,xr) = 0;      % expand G
C(xr,xr) = 0;      % expand C

if out ~= 0
    G(out, xr) = G(out, xr) - 1;
end


if inplus ~= 0
    G(xr, inplus) = G(xr, inplus) - 1;
end

if inminus ~= 0
    G(xr, inminus) = G(xr, inminus) + 1;
end

end %end of function