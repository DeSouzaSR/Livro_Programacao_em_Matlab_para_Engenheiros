% temp_conversion

% Purpose:
%   To convert an input temperature from degrees
%   Fahrenheit to an output temperature in kelvins.
%
% Input:
%   temp_f -- Temperature in degrees Fahrenheit
% Output:
%   temp_k -- Temperature in kelvins
%

% Prompt
temp_f = input('Enter the temperature in degrees Fahrenheit:');

% Convert to kelvin
temp_k = (5/9) * (temp_f - 32) + 273.15;

% Write out the results
fprintf('%6.2f degrees Fahrenheit = %6.2f kelvins. \n', temp_f, temp_k);


