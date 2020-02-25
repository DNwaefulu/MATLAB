%{
Deion Nwaefulu   ENGR 1300-002  2016-11-1
dcn6334_RQ11_CH18: Create a proper plot of the experiment temperature change
(Delta T, ordinate) versus the heat applied (Q, abscissa).
Heat: Heat applied (Q)[J]
Temp: Temp change (DeltaT)[K]
%}
clc
clear
clear all
Heat = [12 17 25 40 50 58];
Temp = [1.50 2.00 3.25 5.00 6.25 7.00];

plot(Heat,Temp,'r--','MarkerFaceColor','r')

grid on
title('Experimental Temperature Change')
legend('Object temp','Location','Best')
xlabel('Heat applied (Q)[J]')
ylabel('Temp change (DeltaT)[K]')
axis([0 60 0 7.00])