%{
Deion Nwaefulu ENGR 1300-002 2016-11-28
dcn6334_RQ11_CH18: Create a prper plot of the experimental temperature change versus the heat applied.
dcn6334_RQ12_CH18: Use polyfit to determine a linear relationship for the data set and graph the resulting trendline along with the experimental data.
Q: Heat applied (Q)[J]
DT: Temp change (Delta T)[K]
qpf: Heat applied polyfit
dtpf: Temp change polyfit
%}
clc;
clear all;
close all;

Q = [12 17 25 40 50 58];
DT = [1.50 2.00 3.25 5.00 6.25 7.00];

figure('Color','w')
plot(Q,DT,'bd','MarkerFaceColor','b','MarkerSize',14)
xlabel('Heat applied (Q)[J]','FontSize',12)
ylabel('Temp change (Delta T)[K]','FontSize',12)
title('Temperature change vs. Heat Applied')
axis([0 60 0 10.00])
grid on

% Linear polyfit
C = polyfit(Q,DT,1);
m = C(1);
b = C(2);
qpf = [12:1:58];
dtpf = b + m * qpf; % Linear equation
hold on
plot(qpf,dtpf,'--b','LineWidth',3)
TE = sprintf('P = %0.3f Q',m);
text(17,5.00,TE,'FontSize',12)