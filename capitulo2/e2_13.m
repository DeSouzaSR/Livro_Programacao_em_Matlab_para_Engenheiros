#!/usr/bin/env octave -q
## Receptor de rádio
## a) Encontrar a frequência de ressonância f0. Para isso, diagramar a voltagem
##    rms em função da frequência. Qual é a frequência para pico da voltagem?
##    Qual é a voltagem para esta frequência?
## b) Votagem para 10% acima da frequência.
## c) Frequências para a voltagem cair para a metade da voltagem da frequência
##    de ressonância?

## Dados iniciais
L = 0.25; # Indultância [mH]
C = 0.10; # Capacitância [nF]
R = 50;   # Resistência [50 ohms]
V0 = 10;  # Voltagem [mV]

f = linspace(0, 100, 10000); # Extremos típicos das frequências de rádio em Hz.

## Cálculos
omega = 2 * pi * f;

V = (R ./ (sqrt(R .^ 2 + (omega .* L  - 1 ./ (omega .* C)) .^ 2))) .* V0;

semilogx(f, V)
ylim([0, 11])
grid on
