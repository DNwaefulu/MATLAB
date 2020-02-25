clc;
clear;
close all;

% F = input('Enter a temperature[F]: ');
% C = (F - 32)/1.8;
% SLlim = 0;
% LGlim = 100;
% 
% 
% if C <= SLlim
%     fprintf('Solid\n')
% elseif C >= LGlim
%     fprintf('Gas\n')
% else
%     fprintf('Liquid\n')
% end

% T = input('Enter temperature[K]: ');
% if T < 0
%     warning('Oops! You entered a negative value for kelvin. I think it was a mistake.')
% end
% T = T - 273

x = 1; y = 4; A = 4;
if x+y < 4
    A = A + 2
elseif x+y < 7
    A = A + 3
end