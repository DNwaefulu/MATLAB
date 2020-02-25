clc;
clear all;
close all;
%%

Age = input('Enter your age: '); 
if Age < 15 || Age > 24
    error('You should not use this method of diagnosis\n')
end

S_Pressure = input('Enter your Systolic Pressure[mm Hg]: ');
D_Pressure = input('Enter your Diastolic Pressure[mm Hg]: ');

if Age >= 15 && Age <= 19
    
if  S_Pressure > 120 || D_Pressure > 81
    fprintf('You have high blood pressure\n')
else
    fprintf('You have normal blood pressure\n')
end
end
if Age >= 20 && Age <= 24
    
    if  S_Pressure > 132 || D_Pressure > 83
    fprintf('You have high blood pressure\n')
    else
    fprintf('You have normal blood pressure\n')
    end
end