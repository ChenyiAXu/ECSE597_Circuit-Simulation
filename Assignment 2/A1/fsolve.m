function [fpoints, r] = fsolve(fL, fH, N, out)
global G C b

% log spacing
fpoints = logspace(log10(fL), log10(fH), N);

r = zeros(N,1);

for k = 1:N
    omega = 2*pi*fpoints(k);
    A = G + 1j*omega*C;
    X = A \ b;
    r(k) = X(out); 
end

end
