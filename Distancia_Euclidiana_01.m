% ALUMNO: RODRÍGUEZ HERNÁNDEZ DANIEL
% ASIGNATURA: REDES NEURONALES
% GRUPO: 8CV41

clear %limpia variables
close all %cierra todas las ventanas
clc %limpia la ventana

%Muestras
x_1 = [0.5, 5];
x_2 = [1.43, 4.6];
x_3 = [1.2, 4.9];
x_4 = [0.7, 3.8];
x_5 = [1.4, 3.9];
x_6 = [0.6, 4.5];
x_7 = [1.27, 3.14];
x_8 = [0.60, 2.72];
x_9 = [2.20, 4.41];
x_10 = [0.99, 3.84];
x_11 = [0.23, 3.49];
x_12 = [0.25, 4.49];
x_13 = [0.27, 2.36];
x_14 = [0.20, 1.77];
x_15 = [0.68, 3.37];
x_16 = [1.87, 0.41];
x_17 = [2.57, 0.44];
x_18 = [2.80, 1.33];
x_19 = [3, 2];
x_20 = [3.49, 0.8];
x_21 = [4.04, 1.46];
x_22 = [3.33, 1.54];
x_23 = [3.63, 2.64];
x_24 = [3.81, 2.08];
x_25 = [3.83, 3.34];
x_26 = [4.47, 2.84];
x_27 = [4.60, 1.85];
x_28 = [5.01, 3.49];
x_29 = [4.39, 3.90];
x_30 = [4.47, 2.30];

%Clases
y_1 = 1;
y_2 = 1;
y_3 = 1;
y_4 = 1;
y_5 = 1;
y_6 = 1;
y_7 = 1;
y_8 = 1;
y_9 = 1;
y_10 = 1;
y_11 = 1;
y_12 = 1;
y_13 = 1;
y_14 = 1;
y_15 = 1;

y_16 = 2;
y_17 = 2;
y_18 = 2;
y_19 = 2;
y_20 = 2;
y_21 = 2;
y_22 = 2;
y_23 = 2;
y_24 = 2;
y_25 = 2;
y_26 = 2;
y_27 = 2;
y_28 = 2;
y_29 = 2;
y_30 = 2;

X = [x_1; x_2; x_3; x_4; x_5; x_6; x_7; x_8; x_9; x_10; x_11; x_12; x_13; x_14; x_15;...
    x_16; x_17; x_18; x_19; x_20; x_21; x_22; x_23; x_24; x_25; x_26; x_27; x_28; x_29; x_30];

Y = [y_1; y_2; y_3; y_4; y_5; y_6; y_7; y_8; y_9; y_10; y_11; y_12; y_13; y_14; y_15;...
    y_16; y_17; y_18; y_19; y_20; y_21; y_22; y_23; y_24; y_25; y_26; y_27; y_28; y_29; y_30];

figure(1)
x_q = [2.40, 3.12];


plot(X(1:15, 1), X(1:15, 2), 'rs','MarkerSize', 20,'LineWidth', 2)
title('Grafico mi alegria')
xlabel('Característica 1')
ylabel('Característica 2')
hold on

plot(X(16:end, 1), X(16:end, 2), 'go','MarkerSize', 20,'LineWidth', 2)
plot(x_q(1), x_q(2), 'b<','MarkerSize', 20,'LineWidth', 2)
hold off

%Distancia Euclidiana
distancia = [];
for i=1:1:30
    dummy = sqrt((X(i, 1) - x_q(1))^2 + (X(i, 2)- x_q(2))^2);
    distancia = [distancia, dummy]; 
end

[dista, indice] = min(distancia);
clase = Y(indice)


