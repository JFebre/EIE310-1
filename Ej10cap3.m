close all;
clear all;
clc;

x=[zeros(1,16) ones(1,10) zeros(1,30)];
nx= -5:50;
[e,nh]=escalon(0,-5,50);
h=(0.8 .^ nh) .* e;
[y,ny]=convol(x,nh,h,nh);
subplot (3,1,1); stem(nx, x); axis([-10 60 0 1]); title('x(n)'); grid
subplot (3,1,2); stem(nh, h); axis([-10 60 0 1]); title('h(n)'); grid
subplot (3,1,3); stem(ny, y); axis([-10 60 0 1]); title('y(n)'); grid