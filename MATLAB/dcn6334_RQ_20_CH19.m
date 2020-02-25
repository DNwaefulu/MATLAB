%{
Deion Nwawfulu  ENGR 1300-002  2016-5-12
dcn6334_RQ4_CH19: Write an if-elseif-else statement that asks the user to enter a grade in
numerical form and display the letter grade corresponding to the numerical
grade.
Grade: Variable grade from 0 to 100
%}

clc;
clear;
close all;

Grade = input('Please enter a number grade: ');

if Grade >= 90
    fprintf('A\n')
elseif Grade < 90 && Grade >= 80
    fprintf('B\n')
elseif Grade < 80 && Grade >= 70
    fprintf('C\n')
elseif Grade < 70 && Grade >= 60
    fprintf('D\n')
else
    fprintf('F\n')
end