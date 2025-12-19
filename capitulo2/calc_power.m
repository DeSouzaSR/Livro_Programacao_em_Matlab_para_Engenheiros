% Purpose:
#   To calculate and plot the power supplied to a load as
%   a function of the load resistance
% Input:
%   I  -- Current flow to load (amps)
%   V  -- Voltage of the power source (volts)
%   rs -- Internal resistance of the power source (ohms)
% Output:
%   rl -- Resistance of the load (ohms)
%   pl -- Power supplied to load (watts)
clear;
clc;


% Source voltage and internal resistance
V = 120;
rs = 50;

% Load resistances
rl = 1:1:100;

% Current flow for each resistance
I = V ./ (rs + rl);

% Power supplied to the load
pl = (I .^ 2) .* rl;

% Plot
plot(rl, pl);
title('Plot of power versus resistance');
xlabel('Load resistance (ohms)');
ylabel('Power (watts)');
grid on;
