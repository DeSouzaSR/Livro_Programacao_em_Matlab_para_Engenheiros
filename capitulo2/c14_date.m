% Purpose:
%   To calculate the age of an organic sample from the
%   percentage of the original carbon-14 remaining in
%   the sample
%
% Variables:
%   age       -- The age of the sample in years
%   lambda    -- The radioactive decay constant for
%                carbon-14, in units of 1/years.
%   percent   -- The percentage of carbon-14 remaining
%                at the time of the measurement
%   ratio     -- The ratio of the carbon-14 remaining at
%                the time of the measurement to the
%                original amount of carbon-14.

% Clear
clear; clc;

% Set decay constant for carbon-14
lambda = 0.00012097;

% Percentage of C-14 remaining;
percent = input('Percentage of carbon-14 remaining: ');

% Perform calculations
ratio = percent / 100;
age = (-1.0/lambda) * log(ratio);

string = ['The age of sample is ' num2str(age) 'years.'];
disp(string);
