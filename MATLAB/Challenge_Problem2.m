%{
Deion Nwaefulu  ENGR 1300-002  2016-11-2
Challenge Problem 2:
%}
clc
clear

PC = [1741 2377 3203 3571; 0.37 0.21 0.31 0.17];
C = input('Enter your company name: ','s');
PC2 = num2cell(PC(1,:));
PN = menu('Select a part number', PC2);
Q = input('Enter the number of selected parts: ');
Total = Q * PC(2, PN);
fprintf('\nAn order has been\nplaced by\n%s for %0.0f\nparts.\n',C,Q)
fprintf('\nEach part costs\n$%0.2f.\nThe total cost for\nthe parts is\n$%0.2f.\n',PC(2, PN),Total)
