%{
Deion Nwaefulu  ENGR 1300-002  2016-11-2
Challenge Problem 2:
%}
clc
clear

Name = input('Enter your name: ','s');
SC = menu('Do you live in South Carolina','Yes','No');
Birthday = input('Enter your birthday in the format [month day year]: ');
Year = 2011 - Birthday(1, 3);
fprintf('\n%s was born\non %0.0f-%0.0f-%0.0f.\n\n',Name,Birthday(1, 1),Birthday(1, 2),Birthday(1, 3))
fprintf('He was born %0.0f years ago.\n',Year)