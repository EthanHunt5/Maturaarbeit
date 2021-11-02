clear;close all;clc

%Bildschirmgrösse
sz = get(0,'screensize');

%Geburtenrate der Beute-/Räuberpopulation
e1  = 10;        
e2 = 8;   

% Sterberate der Beute pro Räuber
y1 = 0.08;

%Reproduktionsrate der Räuber pro Beute
y2 = 0.01;  

%Integrationsschritte
tspan = [0 10];      

%Verschiedene Startbedingungen 
n0 = [450 500 550 600 650 700 750 800 850 900 950 ; 90 100 110 120 130 140 150 160 170 180 190];  

%Funktionsgleichungen
f = @(t,y) [y(1)*(e1-y1*y(2));y(2)*(-e2+y2*y(1))];

figure('Name','Lotka-Volterra-Modell','Position',[mean(sz([1 3]))-720/2 mean(sz([2 4]))-550/2 720 550])

for i = 1:size(n0,2)
    y0 = n0(:,i);
    
    %Lösungen der Differentialgleichungen 
    sol = ode23s(f,tspan,y0);

    t = linspace(tspan(1),tspan(2),100000)';
    y = deval(sol,t);

    %Graph
    title('Lotka-Volterra-Phasenraum','fontsize',25,'fontname','Avenir')
    subplot(1,1,1)
    plot(y(1,:),y(2,:),'-','LineWidth',1)   
    
    %Populationsgrössen zu Beginn
    plot(950,190,'r+','LineWidth',1) 
    
    %Gleichgewichtspunkt
    plot(e2/y2,e1/y1,'b+','LineWidth',1)        
    
    %Achsenskalierung
    axis([0 2000 10 250])                          
    
    grid                                       
    hold on
    
    %Achsenbeschriftungen
    xlabel('Beute','fontsize',13,'fontname','Avenir')                                
    ylabel('Räuber','fontsize',13,'fontname','Avenir')                                                   
end
