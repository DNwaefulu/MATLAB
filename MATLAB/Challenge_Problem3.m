%{
Deion Nwaefulu  ENGR 1300-002  2016-11-2
Challenge Problem 1

%}
clc
clear

Beam = {'Steel','Titanium','Copper'; 5, 7, 1; 11.8, 13.1, 12.5};
Material = menu('Beam material',Beam(1,:));
Reference = Beam{3, Material};
D = input('Enter a deflector of no more than 4 inches (in inches): ');

% in to cm
D2 = D * 2.54;

Difference = (abs(D2 - Reference) / Reference) * 100; % Percentage of deflection

fprintf('The %s beam has an\nactual deflection of %0.1f \ncm.\n\nYour entry is %0.0f%% less\ndeflection than the\nreference beam.\n',Beam{1,Material},Reference,Difference)
