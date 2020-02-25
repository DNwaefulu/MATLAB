% In class activity for error and warning messages
%%
clc;
clear;
close;
%%
% Converts temperature from Kelvin to Degrees F

% User input
T = input('Enter Temperature in Kelvin: ');

% check for validity

if T < 0
    error('Error: Temperature is not valid')
else
    T_F = (T - 273) *1.8 + 32;
    fprintf('Temperature of %0.0fK is converted to %0.0f deg F\n', T,T_F)
end
%% usage of warning statement
T = input('Enter Temperature in Kelvin: ');

% check for validity

if T < 0
    warning('Warning: Temperature is not valid but taking absolute value')
    T_F = (abs(T) - 273) *1.8 + 32;
    fprintf('Temperature of %0.0fK is converted to %0.0f deg F\n', abs(T),T_F)
    
else
    
    
    T_F = (T - 273) *1.8 + 32;
    fprintf('Temperature of %0.0f K is converted to %0.0f deg F\n', T,T_F)
end