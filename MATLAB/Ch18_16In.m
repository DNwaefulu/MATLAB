%%
clc;
clear
clear all;
% Deion Nwaefulu
% 1300-001
% 3/29/16
% Create a proper plot of the following set of experimental data collected
% during the charging of a capacitor.

%%
Time = [0.2 0.4 0.6 0.8 1.0];
Voltage = [75.9 103.8 114.0 117.8 119.2];
figure ('color','w')
plot(Time, Voltage,'k-','MarkerFaceColor','blue','MarkerSize',12)
grid on
xlabel('Time (t)[s]','FontSize',12)
ylabel('Voltage (V)[V]','FontSize',12)
axis([0 1.0 0 120])