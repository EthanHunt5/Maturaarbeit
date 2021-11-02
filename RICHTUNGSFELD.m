clear
close all
clc

%Intervall
[X,Y] = meshgrid(-2.5:.25:2.5,-2.5:.25:2.5);

%Bestimmung des Tangentialvektors: 1 + f(x,y).^2
N = sqrt(1+Y.^2./X.^2);                          
U = 1./N;

%f(x,y)/N
V = -Y./X./N; 

%Graph (0.5 = Verkürzungsfaktor der Vektoren)
quiver(X,Y,U,V,0.7)