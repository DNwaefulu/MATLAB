%{
Deion Nwaefulu    ENGR 1300-002   2016-10-24
dcn6334_RQ4_CH17: Write a program to determine how far the Microjoule
will travel in kilometers given a user-specified amount of ethanol.

PO = Specific gravity to density of object
N = lbm/gal to g/gal
V = gallons
L = miles
A = Answer in kiometers
g = grams of ethanol
%}

clc
clear

% Knowns:
M = 10705;  %[miles per gallon]
SG = 0.789; %[Specific gravity of ethanol]
PW = 8.35;  %[Density of water]
km = 0.621; %[miles to kilometers]
lbm = 2.205; %[pound-mass to grams]
g2 = 1000;  %[grams]

g = input('Enter mass of ethanol [grams]: ');
PO = SG * PW;
N = (PO * g2)/lbm;
V = g / N;
L = M * V;
A = L / km;

fprintf('The distance of the Microjoule traveled is %0.0f kilometers.\n',A)