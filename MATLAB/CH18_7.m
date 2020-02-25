clear all
clc

temp= input('Type the initial room temperature of the water [Deg F]:');
boil= input('Enter the time to boil [Min]:');
name= input('Enter name of stove:','s');
pow= input('Enter the power of the burner [W]:');

% converting int temp to C
int=((temp-32)*5/9);
ft=100;
dt=ft-int;

% convert mins to secs
z=boil*60;

%converting gal to g
densew=1;
gal=1;
liter=gal/.264;
kgmass=densew*liter;
gmass=kgmass*1000;

%specific heat of water
Cp=4.184;


%calculate Thermal energy
E=gmass*Cp*dt;

%calculate watts
W=E/z;

%calculate eff
eff=(W/pow)*100;

fprintf('\nEnergy required: %0.0f J\n',E);
fprintf('Power used by burner: %0.0f W\n\n',W);

fprintf('\nBurner efficiency for a %s stove: %.01f %%\n',name,eff);
