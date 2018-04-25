%ejercicio 1
[x,n]=impulso(0,-15,15);
w=0:(pi/200):pi;
y=dtft(x,n,w);
plot(w/pi,abs(y));grid