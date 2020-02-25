%{
Deion Nwaefulu ENGR 1300-002 2016-11-29
dcn6334_RQ18_CH18: Create a proper plot of the power versus the diameter
assuming the data are experimental.
dcn6334_RQ19_CH18: Use polyfit to determine the power relationship for the
data set and graph the resulting trendline along with experimental data.
D: Diameter (D)[ft]
P: Power (P)[hp]
dpf: Diameter polyfit
ppf: Power polyfit
%}
clc;
clear all;
close all;

D = [0.5 0.75 1 1.5 2 2.25 2.5 2.75];
P = [0.004 0.04 0.13 0.65 3 8 18 22];

figure('Color','w')
plot(D,P,'go','MarkerFaceColor','g','MarkerSize',14)
xlabel('Diameter (D)[ft]','FontSize',12)
ylabel('Power (P)[hp]','FontSize',12)
title('Power vs. Diameter')
axis([0 3 0 23])
grid on

% Power polyfit
C = polyfit(log10(D),log10(P),1);
m = C(1);
b = 10^C(2);
dpf = [0.5:0.1:2.80];
ppf = b*dpf.^m;
hold on
plot(dpf,ppf,'-.g','LineWidth',3)
TE = sprintf('P = %0.1f D^{%0.0f}',b,m);
text(1,5,TE,'FontSize',12)