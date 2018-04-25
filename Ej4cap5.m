
n = -20 : 20; n(21) = 0.001;
h = sin((pi/2)*n) ./ (pi*n);
subplot (2,2,1); stem(n, h); grid; title('h(n) limitada a 41 muestras');
y = -20 : 20; n(21) = 0.001; hy = sin((pi/2)*y) ./ (pi*y);
w = 0 : (pi/1000) : pi; H1 = dtft(hy, y, w);
z = -80 : 80; n(81) = 0.001; hz = sin((pi/2)*z) ./ (pi*n);
H2 = dtft(hz, z, w);
subplot(2,2,2);plot(w/pi, abs(H1), 'r', w/pi, abs(H2), 'b');
title('Mag [ H(w) ] rojo : 41 m azul : 161 m');
xlabel('w/pi [rad/m]'); grid;