%%
clc;
clear;

%%
% SCFOOTBALL = [2007, 23, 21; 2008, 31, 14; 2009, 17, 34; 2010, 7, 29; 2011, 13, 34; 2012, 17, 27];
Year = [2007 2008 2009 2010 2011 2012];
Clemson = [23 31 17 7 13 17];
USC = [21 14 34 29 34 27];
figure('color','w')
plot(Year, Clemson,'ko','MarkerSize',12)
hold on
plot(Year, USC,'r*','MarkerSize',12)
L=legend('CU', 'UCS','Location','NorthEast');
grid on
title('The Battle of the Palmetto State','FontWeight','bold','Color','b','FontSize',16);
axis([2006 2013 0 40])
ylabel('Points Scored','FontSize',8,'FontWeight','bold','Color','k')
xlabel('Year of Game','FontSize',8,'FontWeight','bold','Color','k')
set(L,'FontSize',10,'TextColor','k','EdgeColor','b')