clear;close all;clc

%Bildschirmgrösse
sz = get(0,'screensize');

%Modellparameter
lambda = 8e-9;     
gamma = 0.35025;  

%Simulationshorizont (in Tagen) und Inkrement
t = 300;       
dt = 0.1;               
k = floor(t/dt);

S = zeros(k+1,1);
I = zeros(k+1,1);
R = zeros(k+1,1);
p = linspace(0,k*dt,k+1);

%Startbedingungen
S(1) = 60e6;              
I(1) = 500;
R(1) = 0;

%Basisreproduktionszahl R0
R0 = (lambda*(S(1)+I(1)+R(1)))/gamma;
text = 'Basisreproduktionszahl R0:';
disp(text)
disp(R0)

%SIR-Differentialgleichungen
for n = 1:k
   S(n+1) = S(n)-dt*lambda*S(n)*I(n); 
   I(n+1) = I(n)+dt*lambda*S(n)*I(n)-dt*gamma*I(n);
   R(n+1) = R(n)+dt*gamma*I(n);
end

%Graph
figure('Name','Klassisches SIR-Modell','Position',[mean(sz([1 3]))-720/2 mean(sz([2 4]))-550/2 720 550])
plot(p,S,p,I,p,R,'LineWidth',1);
legend('Susceptible (S)', 'Infected (I)', 'Recovered (R)', 'Location','northeast','FontSize',13.5,'fontname','Avenir');
title('Klassisches SIR-Modell','fontsize',15.5,'fontname','Avenir')
xlabel('Zeit in Tagen','fontsize',13,'fontname','Avenir');
ylabel('Populationsgrösse','fontsize',13,'fontname','Avenir');
grid