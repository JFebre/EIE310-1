h1 = [0.05 0.45 0.56 0.44 0.05]; 
h1 = h1 / (sum(h1)); % para que H(0) sea = 1
h2 = [3.2 0.25 0.4 0.6 0.25];
h2 = h2 / (sum(h2));
n = [0 : 0.1 : 3.9] * pi; x = square(n); % genera onda cuadrada
y = conv(x, h1); % filtra la onda cuadrada
m = conv(x, h2);
subplot 221; stem(x); title('x1 (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 222; stem(y); title('y1 (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 223; stem(x); title('x2 (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 224; stem(m); title('y2 (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid