%%
clc;
clear;

%%
Comp = {'Holtz100','Lever014','Dillard202'};
CurData = [5 7 10 12 15; 128 142 165 180 212; 18 20 23 25 30; 260 285 333 368 428];
Choice = menu('Select a Component', Comp);
VoltData = num2cell(CurData(1,:)); % Takes number and turn it into a cell array.
Volt = menu('Choose Voltage Value', VoltData);
fprintf('Component %s\nVoltage = %0.0f;\tCurrent = %0.0f mA\n',Comp{Choice}, CurData(1, Volt), CurData(Choice+1,(Volt))) % Choice+1 goes to the next column from CurData