%{
Deion Nwawfulu  ENGR 1300-002  2016-5-12
dcn6334_RQ4_CH19: Write a program that asks for the mass using an input
statement and displays the distance in a formatted sentence.

PO = Specific gravity to density of object
N = lbm/gal to g/gal
V = gallons
L = miles
A = Answer in kiometers
grams = grams of ethanol
%}

clc;
clear;
close all;

% Knowns:
M = 10705;  %[miles per gallon]
SG = 0.789; %[Specific gravity of ethanol]
PW = 8.35;  %[Density of water]
km = 0.621; %[miles to kilometers]
lbm = 2.205; %[pound-mass to grams]
g2 = 1000;  %[grams]

grams = input('Enter mass of ethanol [grams]: ');
PO = SG * PW;
N = (PO * g2)/lbm;
V = grams / N;
L = M * V;
A = L / km;

if grams < 0 || grams > 500
    error('Error: Mass must be between 0 and 500 grams')
else
    fprintf('The distance of the Microjoule traveled is %0.0f kilometers.\n',A)
end