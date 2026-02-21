function res(n1,n2,val)

global G

g = 1/val;

if n1 ~= 0
    G(n1,n1) = G(n1,n1) + g;
end

if n2 ~= 0
    G(n2,n2) = G(n2,n2) + g;
end

% Add off-diagonal terms
if n1 ~= 0 && n2 ~= 0
    G(n1,n2) = G(n1,n2) - g;
    G(n2,n1) = G(n2,n1) - g;
end %end of if

end %end function