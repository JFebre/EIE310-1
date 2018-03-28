clear all;
clc;
%mi rut es: 19.618.375-2
a=1; b=9; c=6; d=1; e=8; f=3; g=7; h=5; i=2;
B=((a+b)*c)
r=((i+e)*h)/((b+c+e)*10)
R=((i+e)*(a+c))/(b+c+e+g+h)
%funcion exponencial decreciente
n=0:1:10; k= B * r .^n;
subplot 331; stem(n,k);
xlabel('n'); title('S, Exponencial decreciente'); grid
m=0:1:10; y= B * R .^m;
%funcion exponencial decreciente
subplot 332; stem(m, y);
xlabel('m'); title('S. Exponencial creciente'); grid
%funcion exponencial Compleja
w =[-20 : 1 : 20]; q= -((b+c+1)/60) + (((a*h*d)+1)/60)*j; z= exp(q*w);
subplot 333; stem(w, real(z)); title('parte real'); xlabel('w')
subplot 334; stem(w, imag(z)); title('parte imaginaria'); xlabel('w')
subplot 335; stem(w, abs(z)); title('magnitud'); xlabel('w')
subplot 336; stem(w, (180/pi)*angle(z)); title('fase [°]'); xlabel('w')
%funcion sinusoidal
j= [0:1:30];
u= 3*cos(2*pi* ((2+d+f)/90)*j+pi/3);
subplot 337; stem(j, u);
xlabel('j'); title('S. Sinusoidal'); grid
%funcion impulso
o=[-b : b];
p=[(o-a)==0];
subplot 338; stem(o, p); title('S. Impulso'); xlabel('o'); grid
%funcion escalon
S=[-f:f];
K=[(S-a) >= 0];
subplot 339; stem(S,K); title('S. Escalon'); xlabel('S'); grid