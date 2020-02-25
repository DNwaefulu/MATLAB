%{
Deion Nwaefulu    ENGR 1300-002   2016-10-17
Problem statement: Calculate the surface tension of a falling drop

Variables:
R - Maximum radius [in]
SG - Specific gravity [-]
sigma - Surface tension [J/m^2]
rho_w - Density of water [1000 kg/m^3]
rho_a - Density of acetone [kg/m^3]
g - Acceleration due to gravity [9.8 m/s^2]
%}

clear
clc

% Set input variables & constants

R = 0.25;
SG = 0.79;
g = 9.8;
rho_w = 1000;

% Convert R: [in]-->[cm]-->[m]

R = R*2.54/100;

% Calculate density of acetone

rho_a = SG*rho_w;

% Calculate the surface tension

sigma = R^2*g*rho_a