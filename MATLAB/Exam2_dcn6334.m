%{
Deion Nwaefulu  ENGR 1300-002 2016-11-7
Exam2: Create a function and graph for airline cost

%}
clc;
clear;
clear all;
close all;

Destination = {'NorthEast','SouthEast','NorthWest','SouthWest'};
Cost = [100 125 150 175; 175 100 400 200; 250 275 100 300; 325 300 175 100];
Start = menu('What is your starting location?', Destination);
Dest = menu('What is your destination?', Destination);
D2 = num2cell(Destination);
Party = input('Enter the number of passengers as [adults children seniors]: ');
Single = Cost(Start, Dest);
AirCost = Party(1, 1) * Single + Party(1, 2) * (Single./2) + Party(1 , 3) * (Single * 0.8);
Advance = input('Enter how many months in advance you are booking: ');
Family = Party(1, 1) + Party(1, 2) + Party(1, 3);
Discount = exp((Family * Advance^2)/300);
TotalCost = AirCost/Discount;
fprintf('\nYou wish to travel from %s to\n%s. The total cost for booking\n%0.0f months in advance is $%0.2f.\n',Destination{Start},Destination{Dest},Advance,TotalCost)

VarMonth = [0:.25:6];
TCost = [AirCost];
figure('Color','w')
plot(VarMonth,TCost,'k-.','LineWidth',2)
xlabel('Number of Months in Advance(t)[month]','FontSize',18,'FontWeight','bold')
ylabel('Total Cost(C)[$]','FontSize',18,'FontWeight','bold')
grid on
