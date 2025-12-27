#!usr/bin/env octave -q
## Exercício 2.15: Estudos sobre o raio de curvatura de uma aeronave voando em
## uma trajetória circular.
##
## Objetivos:
##   a) Calcular o raio de curvatura para uma aceleração de 2g em Mach 0.85
##   b) Calcular o raio de curvatura para em Mach 1.5
##   c) Construir um gráfico do raio de curvatura em função da velocidade, para
##      velocidades entre Mach 0.5 e Mach 2.0, assumindo a = 2g
##   d) Calcular o menor raio de curvatura para a = 7g e Mach = 1.5
##   e) Traçar gráfico do raio de curvatura em função da aceleração centrípeta
##      para acelerações entre 2g e 8g

# Definições
mach = 340;  # Mach 1 [m/s]
g    = 9.81; # Aceleração [m/s^2]

# Item a)
v = 0.85 * mach;
a = 2 * g;
r = (v ^ 2) / a; # Cálculo do raio de curvatura

fprintf("Raio de curvatura para v = Mach 0.85 e a = 2g: r = %0.2f m \n", r);

# Item b)
v = 1.5 * mach; # Nova velocidade.
r = (v ^ 2) / a; # Cálculo do raio de curvatura
fprintf("Raio de curvatura para v = Mach 1.5  e a = 2g: r = %0.2f m \n", r);

# Item c)
v = [0.5:0.1:2.0] * mach;
r = (v .^ 2) ./ a; # Cálculo do raio de curvatura
plot(v, r);
xlabel ("Velocidade [m/s]");
ylabel ("Raio de curvatura [m]");
title ("Variação do raio de curvatura em função da velocidade");
grid on;


# Item d
v = 1.5 * mach;
a = 7 * g;
r = (v ^ 2) / a; # Cálculo do raio de curvatura
fprintf("Raio de curvatura para v = Mach 1.5  e a = 2g: r = %0.2f m \n", r);

