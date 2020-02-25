%{
Deion Nwaefulu  ENGR 1300-002  2016-11-1
dcn6334_RQ14_CH18: Create a proper plot of the height(H, ordinate) versus
the radius(r) assuming the data are experimental.
Radius: Radius of the tube (r)[cm] 
Height: Height of the liquid (H)[cm]
%}
clc
clear
clear all
Radius = [0.01 0.05 0.10 0.20 0.40 0.50];
Height = [14.0 3.0 1.5 0.8 0.4 0.2];

plot(Radius,Height,'b-','MarkerFaceColor','b')

grid on

title('Height of the Liquid')
legend('Water (sea level)','Location','Best')
xlabel('Radius (r)[cm]')
ylabel('Height (H)[cm]')
axis([0 0.55 0 15])