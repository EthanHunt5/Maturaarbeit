clear; close all; clc

%Erfassung der Inputs und Start der Zeitmessung
prompt1 = {['\fontname{Avenir}\fontsize{15} Graphen als PDF-Dateien ' ...
    'speichern (0 oder 1):'], ['\fontname{Avenir}\fontsize{15} ' ...
    'Startdatum (mm-dd-yyyy):'], ['\fontname{Avenir}\fontsize{15} ' ...
    'Enddatum (mm-dd-yyyy):'],['\fontname{Avenir}\fontsize{15} ' ...
    'Schrittweite (in Tagen):']};
dlgtitle1 = 'Input: Anfangsbedingungen';
dims1 = [1.5 100];
opts.Interpreter = 'tex';
definput1 = {'0','01-01-2019','01-01-2020','0.01'};
answer1 = inputdlg(prompt1,dlgtitle1,dims1,definput1,opts);
input1 = answer1{2};
input2 = str2double(answer1{1});
input3 = answer1{3};
input4 = str2double(answer1{4});

prompt2 = {['\fontname{Avenir}\fontsize{15} Gesamtbevölkerung N0 (in ' ...
    'Personen):'],['\fontname{Avenir}\fontsize{15} Infizierte ' ...
    'Personen I0 (in Personen):'],['\fontname{Avenir}\fontsize{15} ' ...
    'Diagnostizierte Personen D0 (in Personen):'],['\fontname{Avenir}' ...
    '\fontsize{15} Akut gefährdete Personen A0 (in Personen):']};
dlgtitle2 = 'Input: Anfangsbedingungen';
dims2 = [1.5 100];
opts.Interpreter = 'tex';
definput2 = {'60e6','1000','100','10'};
answer2 = inputdlg(prompt2,dlgtitle2,dims2,definput2,opts);
input5 = str2double(answer2{1});
input6 = str2double(answer2{2});
input7 = str2double(answer2{3});
input8 = str2double(answer2{4});

prompt3 = {'\fontname{Avenir}\fontsize{15} Parameter \alpha:',['\' ...
    'fontname{Avenir}\fontsize{15} Parameter \beta:'],['\fontname' ...
    '{Avenir}\fontsize{15} Parameter \gamma:'],['\fontname{Avenir}\' ...
    'fontsize{15} Parameter \delta:'],['\fontname{Avenir}\fontsize' ...
    '{15} Parameter \epsilon:'],['\fontname{Avenir}\fontsize{15} ' ...
    'Parameter \zeta:']};
dlgtitle3 = 'Input: Anfangsbedingungen';
dims3 = [1.5 100];
opts.Interpreter = 'tex';
definput3 = {'0.400','0.040','0.004','0.100','0.040','0.040'};
answer3 = inputdlg(prompt3,dlgtitle3,dims3,definput3,opts);
input9 = str2double(answer3{1});
input10 = str2double(answer3{2});
input11 = str2double(answer3{3});
input12 = str2double(answer3{4});
input13 = str2double(answer3{5});
input14 = str2double(answer3{6});

prompt4 = {'\fontname{Avenir}\fontsize{15} Parameter \eta:',['\' ...
    'fontname{Avenir}\fontsize{15} Parameter \theta:'],['\fontname' ...
    '{Avenir}\fontsize{15} Parameter \iota:'],['\fontname{Avenir}\' ...
    'fontsize{15} Parameter \kappa:'],['\fontname{Avenir}\' ...
    'fontsize{15} Parameter \lambda:'],['\fontname{Avenir}\' ...
    'fontsize{15} Parameter \mu:']};
dlgtitle4 = 'Input: Anfangsbedingungen';
dims4 = [1.5 100];
opts.Interpreter = 'tex';
definput4 = {'0.040','0.040','0.040','0.010','4e-5','1e-5'};
answer4 = inputdlg(prompt4,dlgtitle4,dims4,definput4,opts);
input15 = str2double(answer4{1});
input16 = str2double(answer4{2});
input17 = str2double(answer4{3});
input18 = str2double(answer4{4});
input19 = str2double(answer4{5});
input20 = str2double(answer4{6});

prompt5 = {['\fontname{Avenir}\fontsize{15} Zeit bis zur ' ...
    'Parameteränderung (in Tagen):'],['\fontname{Avenir}\fontsize{15} ' ...
    'Neues \alpha:'],'\fontname{Avenir}\fontsize{15} Neues \beta:',['\' ...
    'fontname{Avenir}\fontsize{15} Neues \gamma:'],['\fontname{Avenir}' ...
    '\fontsize{15} Neues \delta:'],['\fontname{Avenir}\fontsize{15} ' ...
    'Neues \epsilon:']};
dlgtitle5 = 'Input: Anfangsbedingungen';
dims5 = [1.5 100];
opts.Interpreter = 'tex';
definput5 = {'0','0.400','0.040','0.004','0.100','0.040'};
answer5 = inputdlg(prompt5,dlgtitle5,dims5,definput5,opts);
input21 = str2double(answer5{1});
input22 = str2double(answer5{2});
input23 = str2double(answer5{3});
input24 = str2double(answer5{4});
input25 = str2double(answer5{5});
input26 = str2double(answer5{6});

prompt6 = {'\fontname{Avenir}\fontsize{15} Neues \zeta:',['\fontname' ...
    '{Avenir}\fontsize{15} Neues \eta:'],['\fontname{Avenir}\fontsize' ...
    '{15} Neues \theta:'],['\fontname{Avenir}\fontsize{15} Neues \' ...
    'iota:'],'\fontname{Avenir}\fontsize{15} Neues \kappa:'};
dlgtitle6 = 'Input: Anfangsbedingungen';
dims6 = [1.5 100];
opts.Interpreter = 'tex';
definput6 = {'0.040','0.040','0.040','0.040','0.010'};
answer6 = inputdlg(prompt6,dlgtitle6,dims6,definput6,opts);
input27 = str2double(answer6{1});
input28 = str2double(answer6{2});
input29 = str2double(answer6{3});
input30 = str2double(answer6{4});
input31 = str2double(answer6{5});

prompt7 = {['\fontname{Avenir}\fontsize{15} Sensitivität anzeigen ' ...
    '(0 oder 1):'],['\fontname{Avenir}\fontsize{15} Untere ' ...
    'Parametergrenze:'],['\fontname{Avenir}\fontsize{15} Schrittlänge:' ...
    ''],'\fontname{Avenir}\fontsize{15} Obere Parametergrenze:'};
dlgtitle7 = 'Input: Anfangsbedingungen';
dims7 = [1.5 100];
opts.Interpreter = 'tex';
definput7 = {'1','0.3','0.02','0.5'};
answer7 = inputdlg(prompt7,dlgtitle7,dims7,definput7,opts);
input32 = str2double(answer7{1});
input33 = str2double(answer7{2});
input34 = str2double(answer7{3});
input35 = str2double(answer7{4});
t0 = clock;

%Bildschirmgrösse
b = get(0,'screensize');

%Gesamtbevölkerung zu Beginn
N0 = input5;

%Anfangspopulationen
I0 = input6;
D0 = input7;
A0 = input8;

%Vergleichsdaten (optional)
Faelle_gesamt = []/N0; 
Faelle_aktiv = []/N0;
Hospitalisiert = []/N0;
Genesen = []/N0; 
Gestorben = []/N0; 

l1 = length(Faelle_gesamt);
l2 = length(Faelle_aktiv);
l3 = length(Hospitalisiert);
l4 = length(Genesen);
l5 = length(Gestorben);

%Modellparameter
alpha = input9; 
beta = input10;
gamma = input11;
delta = input12; 
epsilon = input13;
zeta = input14;   
eta = input15; 
theta = input16; 
iota = input17;
kappa = input18; 
lambda = input19;
my = input20;

%Basisreproduktionszahl R0
R0 = (lambda/my)*(alpha/(epsilon+delta+zeta+my)+beta*delta/(eta+theta ...
    +my)+(gamma*delta*theta+gamma*zeta*(eta+theta+my))/(iota+kappa+my));

%Zeitfenster und Inkrement
Start = datenum(input1);
Ende = datenum(input3);
Simulationshorizont = Ende-Start;
Schrittweite = input4;
t = 1:Schrittweite:Simulationshorizont;
Daten = linspace(Start,Ende,length(t));

%Graphen als PDF-Dateien speichern
PDF_Dateien = input2;

%Leere Zeilenvektoren für alle Kompartimente und die Gesamtbevölkerung
E = zeros(1,length(t));
I = zeros(1,length(t));
D = zeros(1,length(t));
A = zeros(1,length(t));
G1 = zeros(1,length(t));
G2 = zeros(1,length(t));
N = zeros(1,length(t));

%Anfangsbedingungen
I(1) = I0/N0;
D(1) = D0/N0;
A(1) = A0/N0;
G1(1) = 0;
G2(1) = 0;
E(1) = 1-I(1)-D(1)-A(1)-G1(1)-G2(1);
N(1) = 1;

%Zustandsvektor des EIDAGG-Modells
x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];

%Parameteränderung(en) nach bestimmter Zeit (optional)
plot1 = 0;
wert7 = input21;
for i=2:length(t)
    
    %Erste Anpassung 
    if (i>wert7/Schrittweite) && input21 ~= 0
        alpha = input22;
        beta = input23;
        gamma = input24;
        delta = input25;
        epsilon = input26;
        zeta = input27;
        eta = input28;
        theta = input29;
        iota = input30;
        kappa = input31;
        if plot1 == 0 
            Rt_1 = E(wert7/Schrittweite)*(lambda/my)*(alpha/(epsilon+ ...
                delta+zeta+my)+beta*delta/(eta+theta+my)+(gamma*delta* ...
                theta+gamma*zeta*(eta+theta+my))/(iota+kappa+my));
            plot1 = 1;
        end
    else
        Rt_1 = R0;
    end
  
    %7x7-Matrix des EIDAGG-Modells für die numerische Berechnung
    M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 lambda/x(7);
          alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta+my) 0 0 ...
          0 0 0;
          0 delta -(eta+theta+my) 0 0 0 0;
          0 zeta theta -(iota+kappa+my) 0 0 0;
          0 epsilon eta iota -my 0 0;
          0 0 0 kappa 0 0 0;
          -my -my -my -my -my 0 lambda/x(7)];

    x = x+M*x*Schrittweite;
    
    %Aktualisierung des Zustandsvektors
    E(i) = x(1);
    I(i) = x(2);
    D(i) = x(3);
    A(i) = x(4);
    G1(i) = x(5);
    G2(i) = x(6);
    N(i) = x(7);
    
end

%Extrema, durchschnittlicher relativer Fehler (DRF) und Zeitmessung
[~, idx] = max(I);
wert7 = t(idx);
e = datestr(input1);
e1 = round(wert7);
e2 = addtodate(datenum(e),e1,'day');
e3 = datestr(e2,'dd/mm/yyyy');
wert4 = [num2str(round(N(round(wert7)*(Simulationshorizont/ ...
    (Simulationshorizont*Schrittweite)))*N0*max(I))),[' nach ' ...
    ''],num2str(round(wert7)),' Tagen am ',e3];

[~, idx] = max(D);
d2 = t(idx);
e4 = round(d2);
e5 = addtodate(datenum(e),e4,'day');
e6 = datestr(e5,'dd/mm/yyyy');
wert5 = [num2str(round(N(round(d2)*(Simulationshorizont/ ...
    (Simulationshorizont*Schrittweite)))*N0*max(D))),[' nach ' ...
    ''],num2str(round(d2)),' Tagen am ',e6];

[~, idx] = max(A);
d3 = t(idx);
e7 = round(d3);
e8 = addtodate(datenum(e),e7,'day');
e9 = datestr(e8,'dd/mm/yyyy');
wert6 = [num2str(round(N(round(d3)*(Simulationshorizont/ ...
    (Simulationshorizont*Schrittweite)))*N0*max(A))),[' nach ' ...
    ''],num2str(round(d3)),' Tagen am ',e9];

DRF_diagnostiziert = 100*(sum(D(1:5/Schrittweite:5*size(Faelle_gesamt, ...
    2)/Schrittweite))/l2)/sum(Faelle_aktiv);

DRF_akut_gefaehrdet = 100*(sum(A(1:5/Schrittweite:5*size(Faelle_gesamt, ...
    2)/Schrittweite))/l3)/sum(Hospitalisiert);

DRF_genesen = 100*(sum(G1(1:5/Schrittweite:5*size(Faelle_gesamt,2)/ ...
    Schrittweite))/l4)/sum(Genesen);

DRF_gestorben = 100*(sum(G2(1:5/Schrittweite:5*size(Faelle_gesamt,2)/ ...
    Schrittweite))/l5)/sum(Gestorben);

t1 = clock;
Zeit1 = etime(t1,t0);
Zeit2 = datetime([0 0 0 0 0 Zeit1], 'Format','HH:mm:ss.SSS');

%Ausgabewerte
fprintf('Startzeit:\n%4d-%02d-%02d %02d:%02d:%07.3f\n',t0)
fprintf('\nStopzeit:\n%4d-%02d-%02d %02d:%02d:%07.3f\n',t1)
fprintf('\nVerstrichene Zeit:\n%s\n\n', Zeit2)

text0 = 'Anzahl hinzugefügte Vergleichsdaten:';
disp(text0)
text1 = ['Fälle gesamt: ',num2str(l1)];
disp(text1)
text2 = ['Fälle aktiv: ',num2str(l2)];
disp(text2)
text3 = ['Hospitalisiert: ',num2str(l3)];
disp(text3)
text4 = ['Genesen: ',num2str(l4)];
disp(text4)
text5 = ['Gestorben: ',num2str(l5)];
disp(text5)
space = ' ';
disp(space)

text6 = 'Durchschnittlicher relativer Fehler (DRF):';
disp(text6)
text7 = ['Diagnostiziert: ',num2str(DRF_diagnostiziert)];
disp(text7)
text8 = ['Akut gefährdet: ',num2str(DRF_akut_gefaehrdet)];
disp(text8)
text9 = ['Genesen: ',num2str(DRF_genesen)];
disp(text9)
text10 = ['Gestorben: ',num2str(DRF_gestorben)];
disp(text10)
disp(space)

text1 = 'Gesamtbevölkerung am Anfang und Ende:';
wert11 = [num2str(N0),' respektive ',num2str(round(N(length(t))*N0))];
disp(text1)
disp(wert11)
disp(space)

text12 = 'Basisreproduktionszahl R0:';
disp(text12)
wert2 = R0;
disp(wert2)

e10 = addtodate(datenum(e),input21,'day');
e11 = datestr(e10,'dd/mm/yyyy');
text13 = ['Effektive Reproduktionszahl 1 ab ',e11,':'];
disp(text13)
wert3 = Rt_1;
disp(wert3)

text14 = 'Maximal infizierte Personen:';
disp(text14)
disp(wert4)
disp(space)

text15 = 'Maximal diagnostizierte Personen:';
disp(text15)
disp(wert5)
disp(space)

text16 = 'Maximal akut gefährdete Personen:';
disp(text16)
disp(wert6)
disp(space)

text17 = ['Situation nach ',num2str(Simulationshorizont),' Tagen am ' ...
    '',num2str(input3),':'];
disp(text17)
wert7 = x(1)*x(7)*N0;
text18 = ['Empfänglich (E) = ',num2str(round(wert7))];
disp(text18)
wert8 = x(2)*x(7)*N0;
text19 = ['Infiziert (I) = ',num2str(round(wert8))];
disp(text19)
wert9 = x(3)*x(7)*N0;
text20 = ['Diagnostiziert (D) = ',num2str(round(wert9))];
disp(text20)
wert10 = x(4)*x(7)*N0;
text21 = ['Akut gefährdet (A) = ',num2str(round(wert10))];
disp(text21)
wert11 = x(5)*x(7)*N0;
text22 = ['Genesen (G1) = ',num2str(round(wert11))];
disp(text22)
wert12 = x(6)*x(7)*N0;
text23 = ['Gestorben (G2) = ',num2str(round(wert12))];
disp(text23)
wert13 = x(7)*N0;
text24 = ['Gesamtbevölkerung (N) = ',num2str(round(wert13))];
disp(text24)
disp(space)

if input21 ~= 0 && input32 == 1
    input32 = 0;
    f1 = ['Achtung: Sensitivität kann nur für konstante Parameter ' ...
        'angezeigt werden!']; 
    disp(f1)
end
      
%Graph des gesamten EIDAGG-Modells
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
p = plot(Daten,E,'b',Daten,I,Daten,D,Daten,A,Daten,G1,Daten,G2);
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
set(p,'LineWidth',1)
hold on
xlim([Start Ende])
ylim([0 max(E)+0.001])
title('Gesamtes EIDAGG-Modell ohne Daten','fontsize',15.5,['fontname' ...
    ''],'Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
l = legend({'Empfänglich','Infiziert','Diagnostiziert',['Akut ' ...
    'gefährdet'],'Genesen','Gestorben'},'Location','northeast');
set(l,'FontSize',13.5,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell.pdf'))
end

%Graph der verstorbenen Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,G2,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        G2 = zeros(1,length(t));
        G2(1) = 0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            G2(i) = x(6);
        end
    plot(Daten,G2,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

if isempty(Faelle_gesamt) == 0 && isempty(Gestorben) == 0
    stem(Daten(1:1/Schrittweite:size(Faelle_gesamt,2)/Schrittweite), ...
        Gestorben,'MarkerEdgeColor','#9d0216','LineStyle','none', ...
        'LineWidth',1)
else
    f2 = 'Achtung: Für "G2" konnten keine Daten gefunden werden!';
    disp(f2)
end

xlim([Start Ende])
ylim([0 max(G2)+0.2])
title('Verstorbene Personen: Modell mit Daten','fontsize',15.5, ...
    'fontname','Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell_Verstorben.pdf'))
end

%Graph der genesenen Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,G1,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        G1 = zeros(1,length(t));
        G1(1) = 0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            G1(i) = x(5);
        end
    plot(Daten,G1,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

if isempty(Faelle_gesamt) == 0 && isempty(Genesen) == 0
    stem(Daten(1:1/Schrittweite:size(Faelle_gesamt,2)/Schrittweite), ...
        Genesen,'MarkerEdgeColor','#9d0216','LineStyle','none', ...
        'LineWidth',1)
else
    f3 = 'Achtung: Für "G1" konnten keine Daten gefunden werden!';
    disp(f3)
end

xlim([Start Ende])
ylim([0 max(G1)+0.2])
title('Genesene Personen: Modell mit Daten','fontsize',15.5,'fontname' ...
    ,'Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize', [25 20]);  
    print(gcf,'-dpdf', ('EIDAGG_Modell_Genesen.pdf'))
end

%Graph der akut gefährdeten Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,A,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        A = zeros(1,length(t));
        A(1) = A0/N0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            A(i) = x(4);
        end
    plot(Daten,A,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

if isempty(Faelle_gesamt) == 0 && isempty(Hospitalisiert) == 0
stem(Daten(1:1/Schrittweite:size(Faelle_gesamt,2)/Schrittweite), ...
    Hospitalisiert,'MarkerEdgeColor','#9d0216','LineStyle','none', ...
    'LineWidth',1)
else
    f4 = 'Achtung: Für "A" konnten keine Daten gefunden werden!';
    disp(f4)
end

xlim([Start Ende])
ylim([0 max(A)+0.2])
title('Akut gefährdete Personen: Modell mit Daten','fontsize',15.5, ...
    'fontname','Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf', ('EIDAGG_Modell_Akut_Gefaehrdet.pdf'))
end

%Graph der diagnostizierten Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,D,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        D = zeros(1,length(t));
        D(1) = D0/N0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            D(i) = x(3);
        end
    plot(Daten,D,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

if isempty(Faelle_gesamt) == 0 && isempty(Faelle_aktiv) == 0
stem(Daten(1:1/Schrittweite:size(Faelle_gesamt,2)/Schrittweite), ...
    Faelle_aktiv,'MarkerEdgeColor','#9d0216','LineStyle','none', ...
    'LineWidth',1)
else
    f5 = 'Achtung: Für "D" konnten keine Daten gefunden werden!';
    disp(f5)
end

xlim([Start Ende])
ylim([0 max(D)+0.2])
title('Diagnostizierte Personen: Modell mit Daten','fontsize',15.5, ...
    'fontname','Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]);  
    print(gcf,'-dpdf',('EIDAGG_Modell_Diagnostiziert.pdf'))
end

%Graph der infizierten Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,I,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        I = zeros(1,length(t));
        I(1) = I0/N0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            I(i) = x(2);
        end
    plot(Daten,I,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

xlim([Start Ende])
ylim([0 max(I)+0.2])
title('Infizierte Personen: Modell ohne Daten','fontsize',15.5, ...
    'fontname','Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell_Infiziert.pdf'))
end

%Graph der empfänglichen Personen mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,E,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        E = zeros(1,length(t));
        E(1) = 1-I0/N0-D0/N0-A0/N0;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            E(i) = x(1);
        end
    plot(Daten,E,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

xlim([Start Ende])
ylim([0 max(E)+0.2])
title('Empfängliche Personen: Modell ohne Daten','fontsize',15.5, ...
    'fontname','Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Anteil der Gesamtbevölkerung','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell_Empfaenglich.pdf'))
end

%Graph der Gesamtbevölkerung mit Sensitivität
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot(Daten,N,'Color','#0504aa','LineWidth',1)
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
hold on

if input32==1
    for text17=input33:input34:input35
        N = zeros(1,length(t));
        N(1) = 1;
        x = [E(1);I(1);D(1);A(1);G1(1);G2(1);N(1)];
        for i=2:length(t)
            alpha = text17;
    
            M = [-(alpha*x(2)+beta*x(3)+gamma*x(4)+my) 0 0 0 0 0 ...
                lambda/x(7);
                  alpha*x(2)+beta*x(3)+gamma*x(4) -(delta+epsilon+zeta ...
                  +my) 0 0 0 0 0;
                  0 delta -(eta+theta+my) 0 0 0 0;
                  0 zeta theta -(iota+kappa+my) 0 0 0;
                  0 epsilon eta iota -my 0 0;
                  0 0 0 kappa 0 0 0;
                  -my -my -my -my -my 0 lambda/x(7)];
    
            x = x+M*x*Schrittweite;
            N(i) = x(7);
        end
    plot(Daten,N,'Color','#017371','LineStyle','--','LineWidth',0.7)
    hold on
    end
end

xlim([Start Ende])
ylim([0 max(N)+0.2])
title('Gesamtbevölkerung: Modell ohne Daten','fontsize',15.5,'fontname' ...
    ,'Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Gesamtbevölkerung relativ zu N0','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell_Gesamtbevoelkerung.pdf'))
end

%Graph der Reproduktionszahl
figure('Name','EIDAGG-Modell','Position',[mean(b([1 3]))-720/2 ...
    mean(b([2 4]))-550/2 720 550])
plot([linspace(Start,Start+input21,length(t)) linspace(Start+input21, ...
    Ende,length(t))],[R0*ones(size(Daten)) Rt_1*ones(size(Daten))], ...
    'LineWidth',1)
hold on
datetick('x','dd/mm/yy','keepticks')
set(gca,'XTickLabelRotation',45)
title('Reproduktionszahl: Modell ohne Daten','fontsize',15.5,'fontname' ...
    ,'Avenir')
xlabel('Datum','fontsize',13,'fontname','Avenir')
ylabel('Reproduktionszahl','fontsize',13,'fontname','Avenir')
grid
if PDF_Dateien==1
    set(gcf,'PaperUnits','centimeters');
    set(gcf,'PaperPosition',[0 0 25 20]);
    set(gcf,'PaperSize',[25 20]); 
    print(gcf,'-dpdf',('EIDAGG_Modell_Reproduktionszahl.pdf'))
end