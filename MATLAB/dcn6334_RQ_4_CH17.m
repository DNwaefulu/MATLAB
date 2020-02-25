%{
Deion Nwaefulu    ENGR 1300-002   2016-10-20
dcn6334_RQ4_CH17: Write a program that to determine how far the Microjoule
will travel in kilometers.

PO = Specific gravity to density of object
N = lbm/gal to g/gal
V = gallons
L = miles
A = Answer in kiometers
%}

clc
clear

% Knowns:
M = 10705;  %[miles per gallon]
g = 100;    %[grams of ethanol]
SG = 0.789; %[Specific gravity of ethanol]
PW = 8.35;  %[Density of water]
km = 0.621; %[miles to kilometers]
lbm = 2.205; %[pound-mass to grams]
g2 = 1000;  %[grams]


PO = SG * PW;

N = (PO * g2)/lbm;

V = g / N;

L = M * V;

A = L / km