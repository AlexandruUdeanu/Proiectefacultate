% % % Proiect Creativitate - Geometrie Computationala % % %


clear; %Stergerea tuturor variabilelor salvate in workspace pentru a evita eventualele erori
%Apelarea functieei Berstein 

[bg2, bg3, bg4] = Bernstein();


%Realizarea corpului
Corpjos1 = [-2.88, 0, 4; -2.12, -6, -2.5];
Corpjos1B = Corpjos1 * bg2;

Coada1 = [4, 5.2, 5.2, 3.85 ; -2.5, -2.5, -0.5 -1.5];
Coada1B = Coada1 * bg3;
Coada2 = [3.85, 3.5, 2.5, 2.75; -1.5, -0.4, -0.4, -2.05];
Coada2B = Coada2 * bg3;
Coada3 = [2.75, 2.4 ,2.25; -2.05, -2.5, -2.05];
Coada3B = Coada3 * bg2;

Corpsus = [2.25, 2.9, 0.5, -3.2, -3; -2.05, 1, 3, 2, -1];
CorpsusB = Corpsus * bg4;

%Realizarea fetei

Nas = [-3, -2.6, -3.5; -1, -1.8, -1.7];
NasB = Nas * bg2;

Gura = [-3.5, -3, -0.5, 0; -1.7, -2.5, -2.5, -1.5];
GuraB = Gura * bg3;

OchiStang1 = [-2.4, -2.3, -2, -2.1; -0.5, -0.2, -0.2, -0.5];
OchiStang1B = OchiStang1 * bg3;
OchiStang2 = [-2.4, -2.5, -2.2, -2.1; -0.5, -0.8, -0.8, -0.5];
OchiStang2B = OchiStang2 * bg3;
OchiDrept1 = [-1.7, -1.6, -1.3, -1.4; -0.5, -0.2, -0.2, -0.5];
OchiDrept1B = OchiDrept1 * bg3;
OchiDrept2 = [-1.7, -1.8, -1.5, -1.4; -0.5, -0.8, -0.8, -0.5];
OchiDrept2B = OchiDrept2 * bg3;

Pliur = [0, 0.25, 0.5; 1, 0.75, 1];
PliurB = Pliur * bg2;

GeanaStanga1 = [-2.5829, -2.5657, -2.4503; -0.6086, -0.8049, -0.8703];
GeanaStanga1B = GeanaStanga1 * bg2;
GeanaStanga2 = [-2.6492   -2.6294   -2.5497; -0.7068   -0.8376   -0.9194];
GeanaStanga2B = GeanaStanga2 * bg2;
GeanaDreapta1 = [-1.72, -1.6, -1.52; -0.85, -0.88, -0.85];
GeanaDreapta1B = GeanaDreapta1 * bg2;
GeanaDreapta2 = [-1.8102 -1.6295 -1.5119; -0.9186 -0.9859 -0.9554];
GeanaDreapta2B = GeanaDreapta2 * bg2;

SpranceanaStanga1 = [-2.36 -2.4446 -2.4595; -0.4116 -0.3520 -0.2778];
SpranceanaStanga1B = SpranceanaStanga1 * bg2; 
SpranceanaStanga2 = [-2.3384 -2.3908 -2.4090; -0.3787 -0.3081 -0.2125];
SpranceanaStanga2B = SpranceanaStanga2 * bg2;
SpranceanaStanga3 = [-2.2994 -2.3619 -2.3511; -0.3399 -0.2709 -0.1544];
SpranceanaStanga3B = SpranceanaStanga3 * bg2;
SpranceanaDreapta1 = [-1.3775 -1.2556 -1.1715; -0.4150 -0.3604 -0.2175];
SpranceanaDreapta1B = SpranceanaDreapta1 * bg2;
SpranceanaDreapta2 = [-1.3879 -1.2828 -1.2408; -0.3472 -0.2926 -0.1665];
SpranceanaDreapta2B = SpranceanaDreapta2 * bg2;
SpranceanaDreapta3 = [-1.4029 -1.3456 -1.3046; -0.3016 -0.2197 -0.0969];
SpranceanaDreapta3B = SpranceanaDreapta3 * bg2;


hold on;
title('Proiect de creativitate - Udeanu Ionut-Alexandru');


%Afisarea culorilor


fill ([3.85 -3, -2.88, 4], [-1.5, -1, -2.12, -2.5], 'cyan', 'Linestyle', 'none');
fill ([2.71546, 2.34168, 2.25, 2.75], [-1.41702, -1.39, -2.05, -2.05], 'white', 'LineStyle', 'none');
fill (Corpjos1B(1, :), Corpjos1B(2, :), 'cyan', 'Linestyle', 'none');
fill (Coada1B(1, :), Coada1B(2, :), 'Cyan', 'Linestyle', 'none');
fill (Coada2B(1, :), Coada2B(2, :), 'cyan', 'Linestyle', 'none');
fill (CorpsusB(1, :), CorpsusB(2, :), 'cyan', 'Linestyle', 'none');
fill (Coada3B(1, :), Coada3B(2, :), 'white', 'LineStyle', 'none');
fill (GuraB(1, :), GuraB(2, :), 'cyan', 'Linestyle', 'none');
fill (NasB(1, :), NasB(2, :), 'white', 'Linestyle', 'none');
fill (OchiStang1B(1, :), OchiStang1B(2, :), 'white', 'Linestyle', 'none');
fill (OchiStang2B(1, :), OchiStang2B(2, :), 'white', 'Linestyle', 'none');
fill (OchiDrept1B(1, :), OchiDrept1B(2, :), 'white', 'Linestyle', 'none');
fill (OchiDrept2B(1, :), OchiDrept2B(2, :), 'white', 'Linestyle', 'none');


%Afisarea liniilor

%corp
plot (Corpjos1B(1, :), Corpjos1B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (Coada1B(1, :), Coada1B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (Coada2B(1, :), Coada2B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (Coada3B(1, :), Coada3B(2, :), 'Color', 'black', 'LineWidth', 2)

%fata
plot (CorpsusB(1, :), CorpsusB(2, :), 'Color', 'black', 'LineWidth', 2)
plot (NasB(1, :), NasB(2, :), 'Color', 'black', 'LineWidth', 2)
plot (GuraB(1, :), GuraB(2, :), 'Color', 'black', 'LineWidth', 2)
plot (OchiStang1B(1, :), OchiStang1B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (OchiStang2B(1, :), OchiStang2B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (OchiDrept1B(1, :), OchiDrept1B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (OchiDrept2B(1, :), OchiDrept2B(2, :), 'Color', 'black', 'LineWidth', 2)
plot (-1.5055, -0.4778, '.k', 'Markersize', 20) %iris
plot (-2.2017, -0.4514, '.k', 'Markersize', 20) %iris
plot (PliurB(1, :), PliurB(2, :), 'Color', 'black', 'LineWidth', 2)
plot (GeanaStanga1B(1, :), GeanaStanga1B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (GeanaStanga2B(1, :), GeanaStanga2B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (GeanaDreapta1B(1, :), GeanaDreapta1B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (GeanaDreapta2B(1, :), GeanaDreapta2B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaStanga1B(1, :), SpranceanaStanga1B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaStanga2B(1, :), SpranceanaStanga2B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaStanga3B(1, :), SpranceanaStanga3B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaDreapta1B(1, :), SpranceanaDreapta1B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaDreapta2B(1, :), SpranceanaDreapta2B(2, :), 'Color', 'black', 'LineWidth', 1)
plot (SpranceanaDreapta3B(1, :), SpranceanaDreapta3B(2, :), 'Color', 'black', 'LineWidth', 1)
fill([5, 2.75, 2.24, 1.87, 0.67, 0.15, -1.75, -2.42, -3.28, -4, -4, 5], [-3.91, -3.68, -3.73, -3.8, -4.03, -4.05, -3.91, -3.81, -3.98, - 4.22, -5, -5,], 'b', 'LineStyle', 'none')

[P] = CurbaSplineBezier();
[Coordonateval] = FMill();

% % % Vizualizarea poligoanelor de control % % %

plot (Corpjos1(1, :), Corpjos1(2, :), '--ro')
plot (Coada1(1, :), Coada1(2, :), '--ro')
plot (Coada2(1, :), Coada2(2, :), '--ro')
plot (Coada3(1, :), Coada3(2, :), '--ro')
plot (Corpsus(1, :), Corpsus(2, :), '--ro')
plot (Nas(1, :), Nas(2, :),'--ro')
plot (Gura(1, :), Gura(2, :),'--ro')
plot (OchiStang1(1, :), OchiStang1(2, :),'--ro')
plot (OchiStang2(1, :), OchiStang2(2, :), '--ro')
plot (OchiDrept1(1, :), OchiDrept1(2, :), '--ro')
plot (OchiDrept2(1, :), OchiDrept2(2, :), '--ro')
plot (Pliur(1, :), Pliur(2, :),'--ro')
plot (GeanaStanga1(1, :), GeanaStanga1(2, :), '--ro')
plot (GeanaStanga2(1, :), GeanaStanga2(2, :), '--ro')
plot (GeanaDreapta1(1, :), GeanaDreapta1(2, :),'--ro')
plot (GeanaDreapta2(1, :), GeanaDreapta2(2, :), '--ro')
plot (SpranceanaStanga1(1, :), SpranceanaStanga1(2, :), '--ro')
plot (SpranceanaStanga2(1, :), SpranceanaStanga2(2, :), '--ro')
plot (SpranceanaStanga3(1, :), SpranceanaStanga3(2, :), '--ro')
plot (SpranceanaDreapta1(1, :), SpranceanaDreapta1(2, :),'--ro')
plot (SpranceanaDreapta2(1, :), SpranceanaDreapta2(2, :), '--ro')
plot (SpranceanaDreapta3(1, :), SpranceanaDreapta3(2, :), '--ro')
plot (P(1, :), P(2, :), '--ro')
plot (Coordonateval(1, :), Coordonateval(2, :), '--ro')

plot (Corpjos1(1, 1), Corpjos1(2, 1), '--r.', 'Markersize', 20)
plot (Coada1(1, 1), Coada1(2, 1), '--r.', 'Markersize', 20)
plot (Coada2(1, 1), Coada2(2, 1), '--r.', 'Markersize', 20)
plot (Coada3(1, 1), Coada3(2, 1), '--r.', 'Markersize', 20)
plot (Corpsus(1, 1), Corpsus(2, 1), '--r.', 'Markersize', 20)
plot (Nas(1, 1), Nas(2, 1), '--r.', 'Markersize', 20)
plot (Gura(1, 1), Gura(2, 1),'--r.', 'Markersize', 20)
plot (OchiStang1(1, 1), OchiStang1(2, 1),'--r.', 'Markersize', 20)
plot (OchiStang2(1, 1), OchiStang2(2, 1), '--r.', 'Markersize', 20)
plot (OchiDrept1(1, 1), OchiDrept1(2, 1), '--r.', 'Markersize', 20)
plot (OchiDrept2(1, 1), OchiDrept2(2, 1), '--r.', 'Markersize', 20)
plot (Pliur(1, 1), Pliur(2, 1), '--r.','Markersize', 20)
plot (GeanaStanga1(1, 1), GeanaStanga1(2, 1), '--r.', 'Markersize', 20)
plot (GeanaStanga2(1, 1), GeanaStanga2(2, 1), '--r.', 'Markersize', 20)
plot (GeanaDreapta1(1, 1), GeanaDreapta1(2, 1), '--r.', 'Markersize', 20)
plot (GeanaDreapta2(1, 1), GeanaDreapta2(2, 1), '--r.', 'Markersize', 20)
plot (SpranceanaStanga1(1, 1), SpranceanaStanga1(2, 1), '--r.', 'Markersize', 20)
plot (SpranceanaStanga2(1, 1), SpranceanaStanga2(2, 1), '--r.', 'Markersize', 20)
plot (SpranceanaStanga3(1, 1), SpranceanaStanga3(2, 1), '--r.', 'Markersize', 20)
plot (SpranceanaDreapta1(1, 1), SpranceanaDreapta1(2, 1), '--r.','Markersize', 20)
plot (SpranceanaDreapta2(1, 1), SpranceanaDreapta2(2, 1), '--r.', 'Markersize', 20)
plot (SpranceanaDreapta3(1, 1), SpranceanaDreapta3(2, 1), '--r.', 'Markersize', 20)
plot (P(1, 1), P(2, 1), '--r.', 'Markersize', 20)
plot (Coordonateval(1, 1), Coordonateval(2, 1), '--r.', 'Markersize', 20)


plot (Corpjos1(1, end), Corpjos1(2, end), '--r.', 'Markersize', 20)
plot (Coada1(1, end), Coada1(2, end), '--r.', 'Markersize', 20)
plot (Coada2(1, end), Coada2(2, end), '--r.', 'Markersize', 20)
plot (Coada3(1, end), Coada3(2, end), '--r.', 'Markersize', 20)
plot (Corpsus(1, end), Corpsus(2, end), '--r.', 'Markersize', 20)
plot (Nas(1, end), Nas(2, end), '--r.', 'Markersize', 20)
plot (Gura(1, end), Gura(2, end),'--r.', 'Markersize', 20)
plot (OchiStang1(1, end), OchiStang1(2, end),'--r.', 'Markersize', 20)
plot (OchiStang2(1, end), OchiStang2(2, end), '--r.', 'Markersize', 20)
plot (OchiDrept1(1, end), OchiDrept1(2, end), '--r.', 'Markersize', 20)
plot (OchiDrept2(1, end), OchiDrept2(2, end), '--r.', 'Markersize', 20)
plot (Pliur(1, end), Pliur(2, end), '--r.','Markersize', 20)
plot (GeanaStanga1(1, end), GeanaStanga1(2, end), '--r.', 'Markersize', 20)
plot (GeanaStanga2(1, end), GeanaStanga2(2, end), '--r.', 'Markersize', 20)
plot (GeanaDreapta1(1, end), GeanaDreapta1(2, end), '--r.', 'Markersize', 20)
plot (GeanaDreapta2(1, end), GeanaDreapta2(2, end), '--r.', 'Markersize', 20)
plot (SpranceanaStanga1(1, end), SpranceanaStanga1(2, end), '--r.', 'Markersize', 20)
plot (SpranceanaStanga2(1, end), SpranceanaStanga2(2, end), '--r.', 'Markersize', 20)
plot (SpranceanaStanga3(1, end), SpranceanaStanga3(2, end), '--r.', 'Markersize', 20)
plot (SpranceanaDreapta1(1, end), SpranceanaDreapta1(2, end), '--r.','Markersize', 20)
plot (SpranceanaDreapta2(1, end), SpranceanaDreapta2(2, end), '--r.', 'Markersize', 20)
plot (SpranceanaDreapta3(1, end), SpranceanaDreapta3(2, end), '--r.', 'Markersize', 20)
plot (P(1, end), P(2, end), '--r.', 'Markersize', 20)
plot (Coordonateval(1, end), Coordonateval(2, end), '--r.', 'Markersize', 20)

axis([-4, 5, -5, 4]);
pbaspect([1, 1, 1]);