%ejercicio 2
w=0:(pi/200):pi;
[X,n]=impulso(-1,-15,15);
[Y,m]=impulso(0,-15,15);
[Z,k]=impulso(1,-15,15);
[C,p]=impulso(2,-15,15);
[V,o]=impulso(3,-15,15);
z= 3*X + 4*Y + 3*Z + 2*C + V;
Q=dtft(z,n,w)
subplot 221;plot(w/pi,abs(Q));grid
subplot 222;plot(w/pi,angle(Q));grid