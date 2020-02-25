%{
Deion Nwaefulu  ENGR 1300-002  2016-11-8
dcn6334_RQ8_CH18: Write a program that asks the user of the program to
input the following variables in a specific order.

Mapel: Selling price of a mapel bat(in dollars)
Bamboo: Selling price of a bamboo bat(in dollars)
Produce: Total number of bats manufacturers can produce per week
Week: Number of weeks
Bats: Number of bats produced per week
%}

clc;
clear;
clear all;

Mapel = input('Type the selling price of a mapel bat (in dollars): ');
Bamboo = input('Type the selling price of a bamboo bat (in dollars): ');
Produce = input('Type total number of bats manufacturer can produce per week: ');
Week = input('Type number of weeks manufacturer plans to run production: ');

Bats = Produce * Week;

fprintf('\nProducing %0.0f bats a week for %0.0f weeks in a year will generate:', Produce,Week)
fprintf('\n\tMapel bat revenue: $%0.2f', Bats * Mapel)
fprintf('\n\tBamboo bat revenue: $%0.2f', Bats * Bamboo)
fprintf('\nTotal number of bats produced: %0.3e\n', Bats)