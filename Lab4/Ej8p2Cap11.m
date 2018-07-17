mr = audioread('mr.wav'); % original
mf = audioread('mf.wav'); % filtrado
Fs = 11025;
M = 8192; % tamaño del segmento
T = 0.75 * M; % traslapo
[H1, f] = pwelch(mr, hamming(M), T, 4*M, Fs);
[H2, f] = pwelch(mf, hamming(M), T, 4*M, Fs);
semilogy(f, H1, 'b', f, H2, 'r');
title('PSD Original (azul) Filtrado (rojo)')
axis([0 500 1e-7 1e-2]); xlabel('f [Hz]'); grid;