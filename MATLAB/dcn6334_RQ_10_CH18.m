%{
Deion Nwaefulu   ENGR 1300-002  2016-11-1
dcn6334_RQ10_CH18: Create a prper plot for the following data.
Speed: Speed Vehicle Speed (v)[mph]
Reaction: Reaction (dr)
Braking: Braking (db)
%}
clc
clear
clear all
Speed = [20 30 40 50 60 70];
Reaction = [6 9 12 15 18 21];
Braking = [6 14 24 38 55 75];

figure('color','w')
plot(Speed,Reaction,'co','MarkerSize',12,'MarkerFaceColor','c')
hold on
plot(Speed,Braking,'bo','MarkerSize',12,'MarkerFaceColor','b')

grid on

xlabel('Vehicle Speed (v)[mph]')
ylabel('Distance (d)[m]')

L = legend('Reaction (dr)', 'Braking (db)','Location','Best')
title('Reaction Time of the Driver and Brakes')
axis([0 80 0 80])
set(L,'FontSize',10,'TextColor','k','EdgeColor','b')