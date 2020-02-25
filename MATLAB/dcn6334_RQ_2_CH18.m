%{
Deion Nwaefulu    ENGR 1300-002   2016-10-24
dcn6334_RQ4_CH17: Write a program to determine the speed in units of miles per hour.

MN = Mach number
SS = Speed of Sound
SO = Speed of object
f = meters to feet
mi = feet to miles
s = seconds to hours
MPH = Miles per hour
%}

clc
clear

% Knowns
SS = 343;
f = 3.28;
mi = 5280;
s = 3600;

MN = input('Enter the speed as a Mach number: ');
SO = (MN * SS * f * s);
MPH = (SO/mi);

fprintf('The speed of the plane is %0.0f mph.\n',MPH)


