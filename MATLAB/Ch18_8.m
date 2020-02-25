%%
clc;
clear
clear all;
% Deion Nwaefulu
% 1300-001
% 4/18/16
% Write a program that asks the user of the program to input the following
% variables.

%%
MS = input('Type the selling price of a maple bat (in dollars): ');
BS = input('Type the selling price of a bamboo bat (in dollars): ');
Prod = input('Type total number of bats manufacturer can produce per week: ');
Week = input('Type number of weeks manufacturer plans to run production: ');

Bats = Prod*Week;

fprintf('\nProducing %0.0f a week for %0.0f weeks will generate:',Prod, Week);
fprintf('\n\tMaple bat revenue: $%0.2f', Bats*MS);
fprintf('\n\tBamboo bat revenue: $%0.2f', Bats*BS);
fprintf('\nTotal number of bats produced: %0.3e\n', Bats);