function ind(n1, n2, val)
global G
global b
global C

d = size(G,1);     % current size
xr = d+1;          % new row index

b(xr) = 0;         % expand b
G(xr,xr) = 0;      % expand G
C(xr,xr) = 0;      % expand C

if (n1 ~= 0)
    G(n1,xr) = G(n1,xr) + 1;
    G(xr,n1) = G(xr,n1) + 1;
end

if (n2 ~= 0)
    G(n2,xr) = G(n2,xr) - 1;
    G(xr,n2) = G(xr,n2) - 1;
end

C(xr, xr) = C(xr, xr) - val;

end % end of function