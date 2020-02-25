clear
clc
close all
Voltage = [18 30 40 45];
RectA = [5 18 24 30];
RectB = [15 26 34 50];
figure('color','w')
% plot(Voltage,RectA,'sk',Voltage,RectB,'or','MarkerSize',16,'MarkerFaceColor','b')
plot(Voltage,RectA,'sk','MarkerSize',16,'MarkerFaceColor','y')
hold on
plot(Voltage,RectB,'or','MarkerSize',14,'MarkerFaceColor','b')

xlabel('Voltage (V)[V]','FontSize',14,'FontWeight','bold','color','g','EdgeColor','r','LineWidth',3)
ylabel('Current (I)[mA]')
title('Tracking Current Across Two Rectifiers')
grid on
% legend('Rectifier A','Rectifier B','location','best')
% axis([0 50 0 55])
set(gca,'XTick',0:10:50,'XLim',[0 50],'YTick',0:20:60,'YLim',[0 55])
L = legend('RectifierA','Rectifier B')
set(L,'location','best','color','w','FontSize',14,'TextColor','b')
M = 'I love ENGR-1300'
text(10,30,M,'FontWeight','bold','FontSize',14,'color','y','BackGroundColor','b')

% B_0 = 10;
% k1 = 0.2;
% k2 = 0.3;
% t = [0:0.1:5]
% B1 = B_0 * exp(k1 * t);
% B2 = B_0 * exp(k2 * t);
% plot(t,B1,':r',t,B2,'--g','LineWidth',3)

% C_0 = 8;
% k = 1.42;
% t = [0:0.1:5];
% C = C_0 * exp(-t/k);
% plot(t,C);
% axis([0,5,0,10]);
% grid on
% title ('The Decay of Isotope A')
% xlabel ('Time (t)[h]')
% ylabel ('Concentration (C)[g]')