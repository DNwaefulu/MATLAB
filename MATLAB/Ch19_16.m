clc;
clear all;
close all;

% Deion Nwaefulu
% 1300-001
% 5/3/16
% Write a program to generate the vehicle menu and to display the choice of
% a user in a sentence.

%%
Vehicle = {'Car','Truck','SUV','Motorcycle','Other'};
Choice = menu('Select your vehicle:',Vehicle);
Transmission = {'manual','automatic'};
Choice2 = menu('Select your transmission:',Transmission);
fprintf('You selected a %s with %s transmission.\n',Vehicle{Choice},Transmission{Choice2})

if Choice == 5
    O = input('Type a different vehicle type: ','s');
fprintf('You selected a %s with %s transmission.\n',O,Transmission{Choice2})
end