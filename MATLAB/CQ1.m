%%
clc;
clear;

%%

SphData = [0.9 51 101; 1.7 42 88.1; 1.5 87 133; 0.8 54 76.2];
InitT = 20; %[Degrees Celsius]
LastName = input('Enter your last name: ','s'); 
Firstname = input('Enter your first name: ','s'); %Name initial
fprintf('The minimum mass is %0.1fkg\n', min(SphData(:,1))) % smallest value
NewT = input('Enter a new temperature [deg C]: ');
DeltaT = NewT - InitT;
DW = 1; %Density of water is 1 g/cm^3
SphData2 = SphData(:,1)./SphData(:,3)*1000; % Kilograms to grams function
SG = SphData2./DW;
SphData(:,4)= SG;
NewSphData = [SphData(:,1),SphData(:,2)];
Alpha = SphData(:,2)./10^6;
Vnew = Alpha.*SphData(:,3)*DeltaT+SphData(:,3);
SG2 = SphData(:,1)./Vnew * 1000 * DW;
NewSphData(:,3) = Vnew;
NewSphData(:,4) = SG2;
Spheres = {'Sphere 1','Sphere 2','Sphere 3','Sphere 4'};
Choice = menu('Select a sphere', Spheres);
fprintf('\n%s %s''s report on sphere #%0.0f.\n\tParameters at %0.0f deg C:\n\t\tVol [cc] SG [-]\n\t\t%0.1f\t%0.2f\n',Firstname(1:1),LastName,Choice,InitT,SphData(Choice,3),SphData(Choice,4));
fprintf('\nParameters at %0.0f deg C:\n\t\tVol [cc] SG [-]\n\t\t%0.1f\t%0.2f\n',NewT,Vnew(Choice,1),SG2(Choice,1));