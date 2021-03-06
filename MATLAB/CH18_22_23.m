clc;
clear all;
close all;

% Deion Nwaefulu
% 1300-001
% 5/2/16
% Create a proper plot of the velocity versus the pressure assuming the
% data expereimental.
% Use polyfit to determine a power relationship for the data setsand graph.

%%
P = [50000 101325 202650 250000 304000 350000 405000 505000]; % Pressure (P)[Pa]
VA = [11.25 16.00 23.00 25.00 28.00 30.00 32.00 35.75]; % Velocity fluid A (v)[m/s]
VB = [9.00 12.50 18.00 20.00 22.00 24.00 25.00 28.00]; % Velocity fluid B (v)[m/s]
VC = [7.50 11.00 15.50 17.00 19.00 20.00 22.00 24.50]; % Velocity fluid C (v)[m/s]

figure('color','w')
plot(P,VA,'co','MarkerFaceColor','c','MarkerSize',10)
hold on
plot(P,VB,'ro','MarkerFaceColor','r','MarkerSize',10)
hold on
plot(P,VC,'bo','MarkerFaceColor','b','MarkerSize',10)
axis([4000 550000 5 40])
title('Velocity vs. Pressure')
xlabel('Pressure (P)[Pa]')
ylabel('Velocity (v)[m/s]')
grid on

A = polyfit(log10(P),log10(VA),1);
m1 = A(1);
b1 = 10^A(2);
hold on
B = polyfit(log10(P),log10(VB),1);
m2 = B(1);
b2 = 10^B(2);
hold on
C = polyfit(log10(P),log10(VC),1);
m3 = C(1);
b3 = 10^C(2);

Rpf = [50000:10:505000];
VApf = b1 * Rpf.^m1;
VBpf = b2 * Rpf.^m2;
VCpf = b3 * Rpf.^m3;

plot(Rpf,VApf,'c--','LineWidth',2)
plot(Rpf,VBpf,'r--','LineWidth',2)
plot(Rpf,VCpf,'b--','LineWidth',2)

TE = sprintf('Cyan = Velocity fluid A\nRed = Velocity fluid B\nBlue = Velocity fluid C');
text(100000,35.00,TE,'Backgroundcolor','w','EdgeColor','b');