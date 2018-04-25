w=0:(pi/200):pi;
n=0:15;
R=(0.4) .^n;
P= dtft(S,n,w)
subplot 221;plot(w/pi,abs(P));grid
xlabel('w/pi [rad/seg]'); title('Magnitud');