clear
clc
close all

% Linear graph
% T = [375 395 420 450 500];
% P = [2.2 2.3 2.5 2.6 2.9];
% figure('Color','w')
% plot(T,P,'rd','MarkerFaceColor','r','MarkerSize',14);
% xlabel('Temperature (T)[K]','FontSize',12);
% ylabel('Pressure (P)[atm]','Fontsize',12);
% axis([350 550 2 3]);
% grid on
% 
% C = polyfit(T,P,1); 
% m = C(1);
% b = C(2);
% tpf = [375:10:550];
% ppf = b + m * tpf; % Linear equation
% hold on
% plot(tpf,ppf,'--r','LineWidth',3)
% TE = sprintf('P = %0.3f T',m)
% text(460,2.55,TE,'FontSize',12)

% Power graph
R = [0.5 1 1.25 1.5 2];
V = [3 13 20 28 50];
figure('Color','w');
plot(R,V,'bs','MarkerSize',14,'MarkerFaceColor','b');
grid on
axis([0 3 0 60]);

C = polyfit(log10(R),log10(V),1);
m = C(1);
b = 10^C(2);
rpf = [0.5:0.1:2];
vpf = b*rpf.^m
hold on
plot(rpf,vpf,':b','LineWidth',3)
TE = sprintf('V = %0.1f R^{%0.0f}',b,m);
text(1,5,TE,'FontSize',12)

% Exponential graph
% t = [1 5 15 20 30];
% v = [18.1 12.1 4.5 2.75 1];
% figure('Color','w');
% plot(t,v,'hg','MarkerSize',14,'MarkerFaceColor','g');
% axis([0 40 0 20]);
% grid on
% 
% C = polyfit(t,log(v),1);
% m = C(1);
% b = exp(C(2));
% 
% tpf = [1:1:30];
% vpf = b*exp(m*tpf);
% hold on
% plot(tpf,vpf,'-g','LineWidth',3);
% TE = sprintf('V = %0.0f e^{%0.1f t}',b,m);
% text(1,5,TE)