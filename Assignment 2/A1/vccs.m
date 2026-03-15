function vccs(nd1, nd2, ni1, ni2, val)
%dependent nodes nd1, nd2
%independent nodes ni1, ni2
%I nd1 to nd2 = val*(Vni1-Vni2)
global G

if nd1 ~= 0
    if(ni1 ~= 0)
        G(nd1, ni1) = G(nd1, ni1) + val;
    end

    if(ni2 ~= 0)
        G(nd1, ni2) = G(nd1, ni2) - val;
    end
end %end nd1 != 0

if nd2 ~= 0
    if(ni1 ~= 0)
        G(nd2, ni1) = G(nd2, ni1) - val;
    end

    if(ni2 ~= 0)
        G(nd2, ni2) = G(nd2, ni2) + val;
    end
end % end nd2 != 0

end %end function