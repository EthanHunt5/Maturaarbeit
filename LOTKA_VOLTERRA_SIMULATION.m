clear;close all;clc

%Bildschirmgrösse
sz = get(0,'screensize');

%Anzahl Individuen der Beute-/Räuberpopulation zu Beginn
n1(1) = 950;
n2(1) = 190;

%Geburtenrate der Beute-/Räuberpopulation
e1  = 10;        
e2 = 8;   

% Sterberate der Beute pro Räuber
y1 = 0.08;

%Reproduktionsrate der Räuber pro Beute
y2 = 0.01;              

%Simulationshorizont (in Tagen) und Inkrement
z = 1/100;          

%Startbedingungen
n1(t) = 0;
n2(t) = 0;        

%Lotka-Volterra-Differentialgleichungen
for u = 2:t
    n1(u) = n1(u-1)+z*e1*n1(u-1)-z*y1*n2(u-1)*n1(u-1);
    n2(u) = n2(u-1)-z*e2*n2(u-1)+z*y2*n2(u-1)*n1(u-1);
end

%Graph
figure('Name','Lotka-Volterra-Modell','Position',[mean(sz([1 3]))-720/2 mean(sz([2 4]))-550/2 720 550])
[AX,H1,H2] = plotyy(1:t,n2,1:t,n1);
title('Lotka-Volterra-Populationskurven','fontsize',25,'fontname','Avenir')

%Achsenbeschriftungen und Farbschema
xlabel('Zeit','fontsize',13,'fontname','Avenir');
set(get(AX(2),'Ylabel'),'String','Beute','fontsize',13,'fontname','Avenir')
set(get(AX(1),'Ylabel'),'String','Räuber','fontsize',13,'fontname','Avenir')
set(H1,'LineStyle','--')
set(H2,'Color','r')
set(get(AX(2),'Ylabel'),'Color','r')
grid
