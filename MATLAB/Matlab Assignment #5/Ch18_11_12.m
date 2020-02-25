clc;
clear all;
close all;

% Deion Nwaefulu
% 1300-001
% 5/2/16
% Create a proper plot of the experimental temperature change versus the
% heat applied.
% Use polyfit to determine the linear relationshipfor the data set and the
% graph

%%
Q = [12 17 25 40 50 58]; % Heat applied (Q)[J]
DT = [1.50 2.00 3.25 5.00 6.25 7.00]; % Temp change (Delta T)[K]

figure('color','w')
plot(Q,DT,'bd','MarkerFaceColor','r','MarkerSize',15)
axis([0 60 0 10.00]);
title('Temperature change vs. Heat Applied')
xlabel('Heat applied (Q)[J]')
ylabel('Temp change (Delta T)[K]')
grid on

C = polyfit(Q,DT,1);
m = C(1);
b = C(2);

Pf = [12:1:58];
Lp = m * Pf + b;
hold on
plot(Pf, Lp,'k-','linewidth',3)

TE = sprintf('P = %4.3f H', m);
text(17, 5.00, TE,'BackgroundColor','w','EdgeColor','b','FontSize',15)