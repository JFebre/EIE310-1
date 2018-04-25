n=0:15;
w= 0:(pi/200):pi;
R=(0.9) .^n;
P= dtft(S,n,w);
subplot 221;plot(w/pi,abs(P));grid
xlabel('w/pi [rad/seg]'); title('Magnitud');
subplot 222;plot(w/pi,angle(P));grid
xlabel('w/pi [rad/seg]'); title('Angulo/Pi[rad]');