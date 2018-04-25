close all;
clear all;
clc;

w = [0.9 : 0.001 : 1] * pi;
%Mag y Ang teoricos
MT = 1 ./ sqrt(1.81 - 1.8*cos(w));
AT = - (180/pi) * atan((0.9 * sin(w)) ./ (1 - (0.9 * cos(w))));
%Mag y Ang numericos
n = 0 : 100; h = 0.9 .^ n;
H = dtft(h, n, w);
MN = abs(H); AN = (180/pi) * angle(H);
subplot (2,2,1); plot(w/pi, MT, 'b', w/pi, MN, 'r');
title('MAGNITUD  Azul:Teórica  Rojo:Numérica')
xlabel('w/pi [rad/m]');grid;
subplot (2,2,2); plot(w/pi,AT,'b',w/pi,AN,'r');
title('ÁNGULO[°]  Azul:Teórica  Rojo:Numérica')
xlabel('w/pi [rad/m]');grid;