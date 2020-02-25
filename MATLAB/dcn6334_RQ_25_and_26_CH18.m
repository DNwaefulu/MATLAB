%{
Deion Nwaefulu ENGR 1300-002 2016-11-29
dcn6334_RQ25_CH18: Create a proper plot of the gear size versus the number
of years from 1967 assuming the data are experimental.
dcn6334_RQ26_CH18: Use polyfit to determine the exponential relationship for the
data set and graph the resulting trendline along with experimental data.
Year: Years from 1967
Gear: Minimum gear size [mm]
ypf: Year polyfit
gpf: Gear polyfit
%}
clc;
clear all;
close all;

Year = [0 5 7 16 25 31 37];
Gear = [0.8 0.4 0.2 0.09 0.007 2E-04 8E-06];

figure('color','w')
plot(Year,Gear,'kx','MarkerSize',14)
xlabel('Years from 1967','FontSize',12)
ylabel('Minimum gear size [mm]','FontSize',12)
title('Gear size vs. Years from 1967')
axis([0 40 8E-6 .9])
grid on

% Experimental polyfit
C = polyfit(Year,log(Gear),1);
m = C(1);
b = exp(C(2));

ypf = [0:1:40];
gpf = b*exp(m*ypf);
hold on
plot(ypf,gpf,'k--','LineWidth',3);
TE = sprintf('Gear = %0.0f e^{%0.1f}',b,m);
text(15,0.2,TE)