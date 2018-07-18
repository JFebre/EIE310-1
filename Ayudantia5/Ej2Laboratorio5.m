close all;
clear all;
clc;

Fs = 1000;
fc = 200;
fC = 250;
N = 1001;
fmin = 0;
fmax = 500;
wn = [2 * fc / Fs , 2 * fC / Fs];
b = fir1(N-1, wn, 'bandpass', hanning(N));
t = fir1(N-1, wn, 'bandpass', hamming(N));
k = fir1(N-1, wn, 'bandpass', kaiser(N,10));
h = [1 : N]; 
fp = [0:500/1023:500];
Hb = freqz(b,1,fp,Fs);
Ht = freqz(t,1,fp,Fs);
Hk = freqz(k,1,fp,Fs);
subplot 411; stem(h, b); grid; xlabel('n'); title('h(n)')
subplot 412; semilogy(fp,abs(Hb));grid; title('Hanning');
xlabel('freacuencia [Hz]');
subplot 413; semilogy(fp,abs(Ht));grid; title('Hamming');
xlabel('frecuencia[Hz]');
subplot 414; semilogy(fp,abs(Hk));grid; title('Kaiser');
xlabel('frecuencia[Hz]');