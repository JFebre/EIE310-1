function [X] = dtft(x,n,w)
  %X= valores de la DTFT calculados en la frecuencia w
  %x=secuencia en funcion de n
  %n=vector con índices de x
  %w=vector con frecuencias deseadas
  X=zeros(1,length(w)); 
  for k=1:length(w),
    for i=1:length(n),
      X(k)= X(k)+x(i)*exp(-j*w(k)*n(i));
    end
  end