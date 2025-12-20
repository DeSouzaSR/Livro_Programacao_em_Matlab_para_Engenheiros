#!/usr/bin/env octave -q
# Calcular a distância entre dois pontos quaisquer (x1, y1, z1) e (x2, y2, z2)

clear; clc;

disp("Entre com as coodenadas do ponto 1");
x1 = input('x1 = ');
y1 = input('y1 = ');
z1 = input('z1 = ');

disp("Entre com as coodenadas do ponto 2");
x2 = input('x2 = ');
y2 = input('y2 = ');
z2 = input('z2 = ');

d = sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2);

disp("Distância entre os três pontos:");
fprintf('Resultado %12.4f\n', d);
