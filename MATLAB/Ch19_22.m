clc;
clear all;
close all;

% Deion Nwaefulu
% 1300-001
% 5/3/16
% Write a computer program to allow the user to enter several variables for
% a suggested solution.

%%
Name = input('Enter your name: ','s');

Weight = input('Type your weight in pounds-force[lbf]: ');

Symptom = {'Cold','Flu','Migrane'};
Choice = menu('Select your symptom:',Symptom);

Medicine = {'Achoo', 'Chill', 'HAche'};
Volume = [3.5, 5, 4];
Mass = [9, 16, 11];
Choice_Symptom = Symptom(Choice);
Choice_Medicine = Medicine(Choice);
Choice_Volume = Volume(Choice);
Choice_Mass = Mass(Choice);

Kg = Choice_Mass/1000; % Grams to kilograms
m3 = Choice_Volume/10^6; % mililiters to cubic meters
Density = Kg/m3;
SG = Density/1000; % Specific gravity

PF = (Weight/0.225)/9.8; % Pounds-force to kilograms
Dose = PF*(1.25/(2.5*SG))*(1/Choice_Volume);

fprintf('The specific gravity of %s is %0.3f.\n',Medicine{Choice},SG)
fprintf('%s, your recommended dosage of %s to treat a %s: %0.0f tablets.\n', Name, Medicine{Choice}, Symptom{Choice}, Dose)