%{
Deion Nwaefulu  ENGR 1300-002  2016-11-2
Challenge Problem 4:
%}
clc
clear

G = {'Earth','Mars','Venus'; 9.81, 3.71, 8.87};
Planet = menu('Choose a planet',G(1,:));
Gravity = G{2, Planet};
Pendulum = input('Enter the pendulum length, in meters: ');
f = 2 * pi*sqrt(Pendulum / Gravity);
fprintf('On %s, a %0.1f meter pendulum has a frequency of %0.2f Hz.\n',G{1,Planet},Pendulum,f);