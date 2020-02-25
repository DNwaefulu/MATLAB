%{
Deion Nwaefulu    ENGR 1300-002   2016-10-20
dcn6334_RQ7_CH17: Write a program that to determine how long, in units of
seconds, it will take a motor to raise a load into the air.

PE = Potential energy
PO = Power output
t = Answer in seconds
%}

clc
clear

% Knowns
M = 100; %[kilograms]
g = 9.8; %[gravity (meters per second square]
m = 5;   %[meters]
W = 100; %[watts (J/s)]
E = 0.60; %[Efficiency]

PE = M * g * m;

PO = W * E;

t = PE / PO