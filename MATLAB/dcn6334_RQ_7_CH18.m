%{
Deion Nwaefulu    ENGR 1300-002   2016-10-24
dcn6334_RQ4_CH17: Write a program that measures the efficiency of stove-top burners.

I_T = Initial temperature
F_T = Final temperature
D_T = Delta temperature
Time = Time it takes to boil water
Name = Name and model of stove
Power = Power of model
V = gallon
BP = Boiling point of water
D_W = Density of water
Cp = Specific heat
Q = Thermal energy
m = mass for thermal energy
s = min to s
P_B = Power used by burner
E = Efficiency of stove
%}

% Knowns
BP = 100;
V = 1;
Cp = 4.184;
D_W = 1;

T_I = input('Type the initial room temperature of the water [deg F]: ');
Time = input('Type the time it takes the water to boil [min]: ');
Name = input('Type the brand name and model of your stove: ','s');
Power = input('Type the power of the stove-top burner [W]: ');

% Fahrenheit to Celsius
F_T = ((T_I - 32)/1.8);
D_T = BP - F_T;

% Minutes to seconds
s = Time * 60;

% Gallons to grams
m = ((D_W * (V * 1000))/(0.264));

Q = m * Cp * D_T;

P_B = Q / s;

% Power to efficiency
E = ((P_B/Power) * 100);

fprintf('\nEnergy required:\t\t%0.0f J\n',Q)
fprintf('Power used by burner:\t%0.0f W\n\n',P_B)
fprintf('Burner efficiency for a %s stove: %0.1f%%\n',Name,E)