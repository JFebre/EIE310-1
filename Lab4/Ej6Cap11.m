fc = 250; 
Fs = 1000; 
N = 10001; 
% Dise�o del filtro
wn = 2 * fc / Fs; b = fir1(N-1 ,wn , '' , kaiser(N, 10));
% Respuesta de frecuencia en toda la banda
f1b = 0; f2b = 500;
fb = [f1b : (f2b-f1b)/2047 : f2b];
Hb = freqz(b, 1, fb, Fs);
% Zoom en la banda de transici�n
f1z = 248; f2z = 252;
fz = [f1z : (f2z-f1z)/2047 : f2z];
Hz = freqz(b, 1, fz, Fs);
% Grafico en toda la banda
subplot 221; semilogy(fb, abs(Hb)); grid
axis([f1b f2b 1e-8 1.1])
xlabel('f[Hz]'); title('Mag(H)')
% Zoom en la banda de transici�n
subplot 222; semilogy(fz, abs(Hz)); grid
axis([f1z f2z 1e-8 1.1])
xlabel('f[Hz]'); title('Mag(H) zoom')