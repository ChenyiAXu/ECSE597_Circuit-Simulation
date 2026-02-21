
clear global G C b;
clc;
global G
global C
global b

G = zeros(10,10);
C = zeros(10,10);
b = zeros(10,1);


% Source
vol(1,0,1);   % vi = cos(wt)

% Stage 1 
res(1,2,9606);            % R1a
res(2,0,23280);           % R1b
res(2,3,6800);            % R2
cap(3,0,20.5e-9);         % C2
cap(2,4,94.9e-9);         % C1 (feedback)

%opa(3,4,4);               % opamp1 ( + at node3, - at node2 )
vcvs(0,4,3,4,50);

% Stage 2 

res(4,5,9304);            % Rg
res(5,6,52107);           % Rq (feedback)
cap(5,6,15e-9);           % C3 (feedback)
%opa(0,5,6);               % opamp2 (+ grounded)
vcvs(0,6,0,5,50);
res(5,10,9304);           % R3 (from stage2 to final output)

% Stage 3 

res(6,7,9304);            % R4
cap(7,8,15e-9);           % C4 (feedback)
%opa(0,7,8);               % opamp3 (+ grounded)
vcvs(0,8,0,7,50);

%Stage 4

res(8,9,20000);           % r (input)
res(9,10,20000);          % r (feedback)

%opa(0,9,10);              % opamp4 (+ grounded)
vcvs(0,10,0,9,50);
format short e
disp(G)
disp(C)
disp(b)
% Output node
% Vout = node 10
fL = 1;
fH = 5000;
N = 1000;
out = 10;
[f, H] = fsolve(fL, fH, N, out);
mag_dB = 20*log10(abs(H));
phase_deg = unwrap(angle(H))*180/pi;
disp(20*log10(abs(H(1))));

figure;
semilogx(f, mag_dB);
grid on;
xlabel('Frequency (Hz)');
ylabel('|H(j\omega)| (dB)');
title('Frequency Response (magnitude)');

figure;
semilogx(f, phase_deg);
grid on;
xlabel('Frequency (Hz)');
ylabel('\angle H(j\omega) (deg)');
title('Frequency Response (phase)');
