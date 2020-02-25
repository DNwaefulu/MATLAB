%{
Deion Nwaefulu    ENGR 1300-002   2016-10-20
dcn6334_RQ7_CH17: Write programs that caluclate the thermal energy in
joules, determine the volume of fluid needed in gallons and to call the
functions using the dataset.

V_G = Volume formula for glyceron
A = Aluminum mass
C = Cadmium mass
I = Iron mass
T = Tungsten mass
Cp = Specific heat of material
Cp_g = Specific heat of glycerol
MP = Material property
Q = Thermal energy (J)
SG = Specific gravity of glycerol
Pobj = Density of object
Pwater = Density of water
g = grams
lbm = pound-mass
Pobj_2 = lbm/gal to g/gal
TI_1 = Initial temperature of metals
TI_2 = Initial temperature of glycerol
TF_1 = Final temperature for metals
TF_2 = Final temperature for glycerol
DT_M = Delta temperature of mass
DT_G = Delta temperature of glycerol
Q_A = Thermal energy of Aluminum
Q_C = Thermal energy of Cadmium
Q_I = Thermal energy of Iron
Q_T = Thermal energy of Tungsten
%}

clc
clear

% Knowns
A = [2000 2500 3000 4000 5500 7500 8000];
C = [3000 4000 6500 8000 10000 11000 15000];
I = [2500 3500 4500 5000 5500 7500 9000];
T = [4800 6400 10400 12800 16000 17600 24000];
Cp = [0.897 0.231 0.450 0.134];
TF_1 = 300;
TI_1 = 50;
DT_M = TF_1 - TI_1;
TF_2 = 50;
TI_2 = 25;
DT_G = TF_2 - TI_2;

Q_A = A(1,:) * Cp(1) * DT_M
Q_C = C(1,:) * Cp(2) * DT_M
Q_I = I(1,:) * Cp(3) * DT_M
Q_T = T(1,:) * Cp(4) * DT_M

Cp_g = 2.4;
SG = 1.261;
Pwater = 8.35;
g = 1000;
lbm = 2.205;
Pobj = SG * Pwater;
Pobj_2 = (Pobj * g)/lbm;

V_A = (Q_A)/(Pobj_2 * Cp_g * DT_G)
V_C = (Q_C)/(Pobj_2 * Cp_g * DT_G)
V_I = (Q_I)/(Pobj_2 * Cp_g * DT_G)
V_T = (Q_T)/(Pobj_2 * Cp_g * DT_G)