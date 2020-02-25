clc;
clear;
close all;

RHL = [14 19 25 33; 20 29 41 68];

R1 = RHL(1,:);
R2 = RHL(2,:);

figure('Color','w')
plot(R1,R2,'bs','MarkerFaceColor','b','MarkerSize',10);
xlabel('Time (t)[min]','FontSize',12)
ylabel('Relative Concentration (RHL)[%]','FontSize',12)
title('Relative Hormone Levels Following Exercise','FontSize',12)
axis([0 40 0 80])
grid on

% Power polyfit
C = polyfit(log10(R1),log10(R2),1);
m = C(1);
b = 10^C(2);
R1pf = [10:1:70];
R2pf = b*R1pf.^m;
hold on
plot(R1pf,R2pf,':r','LineWidth',3)
TE = sprintf('V = %0.2f t^{%0.5f}',b,m);
text(15,10,TE,'FontSize',12)

% Exponential polyfit
C = polyfit(R1,log(R2),1);
m = C(1);
b = exp(C(2));

R1pf = [10:1:33];
R2pf = b*exp(m*R1pf);
hold on
plot(R1pf,R2pf,'-b','LineWidth',3);
TE = sprintf('RHL = %0.3f e^{%0.4f t}',b,m);
text(20,20,TE,'FontSize',12,'Color','b','EdgeColor','b','BackgroundColor','w')