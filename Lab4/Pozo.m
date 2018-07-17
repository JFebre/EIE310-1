function [H] = Pozo(f, H, MT, N, Fs)
% f = k · Fs / (N-1)
% 1+ porque el 1er índice en Matlab es 1
% Calcula el índice k más cercano a la frecuencia f
k = 1 + round((N-1) * f / Fs);
H(k-2) = MT;
H(k-1) = 0.02;
H(k) = 0.01;
H(k+1) = 0.02;
H(k+2) = MT;