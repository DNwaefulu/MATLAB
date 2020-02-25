%%
clc;
clear;
clear all;
% Deion Nwaefulu
% Engineering 1300-001
% 1001226334

%%
beam1 = 2; %inch beam
beam2 = 4; %inch beam
Parts = {'UTA','MAV','HORN','ENGR'; 3.019,42.875,4.02,7.024;4.54,19.32,7.31, 6.10};
Span = input('Enter the beam length [ft]: '); % Length of the side of the cube.
Choice = menu('Choose the team part name', Parts(1,:));
L = (Span/3.28); %ft to meters
W = (4*2.54)/100;
H = (2*2.54)/100;
V = L*W*H; % cubic meters
PW = 1000; % kg per cubic meter
PE = cells2num(3,:)*PW; % Specific gravity * Pwater
m = V*PE;
Mass = m;
Price = Choice(2,:); % Price per kilogram
Cost = (m)*(Price);
FName = input('Enter the user''s first name: ','s');
fprintf('%s whishes to construct a cube with each side made from Part %s with a length %0.1f ft. A single beam as specified will have a mass of %0.3f kg and will cost %0.2f.\n',FName,Choice{Parts},Span,Mass,Cost);

VarLength = [1:0.5:10];
figure('color','w')
plot(VarLength,Cost,'k-.','LineWidth',3)
grid on
axis([0 3.5 0 6000])
xlabel('Length(L)[m]','FontTable',16,'FontWeight','bold')
ylabel('Cost(C)[$]','FontTable',16,'FontWeight','bold')