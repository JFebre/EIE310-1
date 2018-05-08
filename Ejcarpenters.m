m=wavread('carpenters');
x=m(1:1000);

%calcula la magnitud del espectro de x entre 0 y 200 kHz
f=0:100:200000;
M1=abs(freqz(x,1,f,44100));
subplot 221; semilogy(f/1000,M1); axis([0 200 0.01 10]);grid
title('1:Espectro original');
xlabel('f [kHz]');ylabel('Magnitud');

%Cuadruplica tasa de muestreo de la secuencia intercalando ceros
x4=zeros(1,4000);
x4(1 : 4 : 4000)= x(1 : 1000);

subplot 222; stem(x4); axis([300 340 -0.1 +0.1]); grid
title('2: Secuencia con ceros (x4)'); xlabel('n');

%filtra x4 con el filtro digital pasabajos, generando y
load h.txt
y=conv(x4,h);

y=4*y;
% Grafica 'y'. Como el filtro digital introduce un retardo de
% 258/2 = 129 muestras, grafica 'y' desplazado 129 muestras
% para facilitar la comparación con x4
subplot 224; stem(y); axis([429 469 -0.1 +0.1]); grid
title('4: Secuencia x4 filtrada'); xlabel('n');

% Calcula la magnitud del espectro de 'y' entre 0 y 200 kHz
M2 = abs(freqz(y, 1, f, 176400));

% Grafica M2
subplot 223; semilogy(f/1000, M2); axis([0 200 0.01 10]); grid;
title('3: Espectro de secuencia x4 filtrada');
xlabel('f [kHz]'); ylabel('Magnitud')