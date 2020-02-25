%%
clc;
clear;
% Deion Nwaefulu
% 1300-001
% 3/29/16
% Write a program that allows the user to type the input power of the motor in watts, the mass of the object, the height of the object, and the time.

%%
P = input('Type the input power of the motor in watts[W]: ');
m = input('The mass of the object in kilograms[kg]: ');
h = input('The height of the object in meters[m]: ');
t = input('The time it took to raise the object in secons[s]: ');
g = 9.8; %Specific gravity
pow = (m*g*h)/t;
Eff =(pow/P)*100; % claculate efficiency
fprintf('The motor is %0.1f%% efficient.\n', Eff);