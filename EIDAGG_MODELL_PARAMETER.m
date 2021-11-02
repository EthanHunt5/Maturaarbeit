function EIDAGG_MODELL_PARAMETER

clear; close all; clc

%EIDAGG-System inklusive N mit Kompartimenten k(1:7) und Parametern p(1:12)
    function M = EIDAGG(p,t)
        M0 = p(13:19);
        [~,m] = ode15s(@DifEq,t,M0);
        function dk = DifEq(~,k)
            dkdt = zeros(7,1);
            dkdt(1) = -k(1).*(p(1).*k(2)+p(2).*k(3)+p(3).*k(4)+p(12))+p(11);
            dkdt(2) = k(1).*(p(1).*k(2)+p(2).*k(3)+p(3).*k(4))-(p(4)+p(5)+p(6)+p(12)).*k(2);
            dkdt(3) = p(4).*k(2)-(p(7)+p(8)+p(12)).*k(3);
            dkdt(4) = p(6).*k(2)+p(8).*k(3)-(p(9)+p(10)+p(12)).*k(4);
            dkdt(5) = p(5).*k(2)+p(7).*k(3)+p(9).*k(4)-p(12).*k(5);
            dkdt(6) = p(10).*k(4);
            dkdt(7) = -p(12).*(k(1)+k(2)+k(3)+k(4)+k(5))+p(11);
            dk = dkdt;
        end
        M = m;
    end

%Daten bezüglich D, A, G1 und G2 (t: nx1, k: nx4)
t = [1
    5
    10
    15
    20
    25
    30
    35
    40
    45
    50
    55
    60
    65
    70
    75
    80];

k = [2285 145 1827
    2677 128 1831
    2634 124 1834
    2986 123 1838
    3592 114 1840
    4018 100 1844
    4230 102 1847
    5005 117 1852
    5749 116 1862
    5981 144 1870
    6893 154 1890
    7363 143 1901
    8263 167 1908
    8218 173 1914
    10043 215 1925
    21966 372 1944
    29573 644 1994]; 

%Fitnessfunktion (auf Daten abgestimmt)  
function fv = ftns(p,t)
    EIDAGGout = EIDAGG(p,t);
    fv = norm(k-EIDAGGout(:,[3 4 6]));
end

%Startbedingungen und -zeit
Population = 100;
Parameter = 19;
opts = optimoptions('ga','PopulationSize',Population,'InitialPopulationMatrix',randi(1E+3,Population,Parameter).*[ones(1,12)*1E-3 ones(1,7)*10],'MaxGenerations',2E4,'PlotFcn','gaplotbestf');

t0 = clock;
fprintf('\nStartzeit: %4d-%02d-%02d %02d:%02d:%07.3f\n',t0)

%Genetischer Algorithmus mit Parametergrenzen
[p,~,~,~] = ga(@(p)ftns(p,t),Parameter,[],[],[],[],[0.2;0.01;0.001;0.1;0.1;0.001;0.07;0.001;0.07;0.02;0.00002741;0.00002192;0.9;0;0;0;0;0;1],[0.35;0.03;0.003;0.2;0.2;0.002;0.09;0.003;0.09;0.03;0.00002742;0.00002192;1;1;1;1;1;0;1],[],[],opts);

%Endwerte
t1 = clock;
fprintf('\nStopzeit: %4d-%02d-%02d %02d:%02d:%07.3f\n',t1)

Zeit1 = etime(t1,t0);
Zeit2 = datetime([0 0 0 0 0 Zeit1], 'Format','HH:mm:ss.SSS');
fprintf('\nVerstrichene Zeit: %s\n\n', Zeit2)

fprintf(1,'\n\tApproximierte Modellparameter:\n\n')
fprintf(1,'\t\tAlpha%c = %9.7f\t',[185;p(1)]) 
fprintf(1,'\tEta = %9.7f\n',p(7))

fprintf(1,'\t\tBeta%c = %9.7f\t',[185;p(2)])
fprintf(1,'\tTheta = %9.7f\n',p(8))

fprintf(1,'\t\tGamma%c = %9.7f\t',[185;p(3)])
fprintf(1,'\tIota = %9.7f\n',p(9))

fprintf(1,'\t\tDelta = %9.7f\t',p(4))
fprintf(1,'\tKappa = %9.7f\n',p(10))

fprintf(1,'\t\tEpsilon%c = %9.7f\t',[185;p(5)])
fprintf(1,'\tLambda%c = %9.7f\n',[185;p(11)])

fprintf(1,'\t\tZeta = %9.7f\t',p(6))
fprintf(1,'\tMy = %9.7f\n\n',p(12))

fprintf(1,'\t%cAchtung: Diese Parameter sind aufgrund fehlender Vergleichsdaten\n\t schwer abzuschätzen und wurden daher manuell angepasst!\n',185)

end
