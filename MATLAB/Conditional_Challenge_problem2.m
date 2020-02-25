clc;
clear;
close all;

Fluid = {'ABC','FGH','MNO'; 0.01, 0.03, 0.02};
F = menu('Choose a fluid',Fluid(1,:));
T0 = input('Enter the initial fluid temperature[degrees Celsius]: ');
t = input('Enter time, in units of minutes: ');
t2 = t * 60;
TA = input('Enter the ambient air temperature[degrees Celsius]: ');
k = Fluid{2, F};
T = TA + (T0 - TA) * exp(-k * t2);

fprintf('%s has temp %0.1f degrees Celsius after %0.0f minutes.\n', Fluid{1, F}, T, t)
