% Propósito
%   Calcular os decibeis a partir de uma potência P2 de entrada, dado P1 de
%   referência

% Limpar a tela
clear; clc;

% Inicialização
P1 = 1; # [miliwatt]

# Entrada
P2 = input('Entre com a potência sonora [miliwatt]: ');

# Cálculos
dB = 10 * log10(P2/P1);


# Saída
fprintf('Para a potência de %8.4f miliwatt é %8.4f dB \n', P2, dB);

