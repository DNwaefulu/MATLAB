clc;
clear all;
close all;

% Deion Nwaefulu
% 1300-001
% 5/2/16
% Create a proper plot of the gear size versus the number of years from
% 1967.
% Use polyfit to determine the exponential relationship for the data set
% and graph the trendline.

%%
Years = [0 5 7 16 25 31 37]; % Years from 1967
Gear = [0.8 0.4 0.2 0.09 0.007 2E-04 8E-06]; % Minimum gear size [mm]

figure('color','w')
plot(Years,Gear,'bs','MarkerFaceColor','b','MarkerSize',15)
axis([0 40 8e-6 .9]);
title('Gear size vs. Years from 1967')
xlabel('Years from 1967');
ylabel('Minimum gear size [mm]');
grid on

C = polyfit(Years, log(Gear), 1);
m = C(1); % Slope
b = exp(C(2)); %y-intercept

time = [0:40];
gear = b * exp(m * time);
hold on

plot(time,gear,'k--','LineWidth',2)

TE = sprintf('Gear = %0.0f e^{%0.1f}',b,m);
text(15,.5,TE,'Backgroundcolor','w','EdgeColor','b','FontSize',15);