%%
clc;
clear
clear all;

%%
t = [0:.1:5];
M = 2;
E = 25;
SC = E*(1+exp(-t/4).*(sin(M*pi.*t)));
figure('Color','w')
plot(t,SC,'r:','LineWidth',3)
grid on
title('Estimated Shipping Cost')
axis([0 5 0 50])
ylabel('Shipping Cost (SC)[$]','FontSize',12,'FontWeight','bold','Color','k')
xlabel('Number of days (t)[days]','FontSize',12,'FontWeight','bold','Color','k')
