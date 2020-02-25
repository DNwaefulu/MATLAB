clc;
clear;
close all;

E = input('Enter efficiency[%]: ');
M = input('Enter the mass in units of kilograms[kg]: ');
P = input('Enter price[$]: ');
Pow = input('Enter power: ');

if E < 15
    if P < 480
        fprintf('Accepted\n')
    end
elseif M > 16
    if Pow > 230
        fprintf('Accepted\n')
    elseif Pow > 220
        fprintf('Accepted with revisions\n')
    else
        fprintf('Rejected\n')
    end
elseif M <= 16
    fprintf('Accepted\n')
elseif E >= 15
    if P > 510
        if Pow > 250
            fprintf('Accepted\n')
        elseif Pow > 230
            fprintf('Accepted with revisions\n')
        else
            fprintf('Rejected\n')
        end
    else
        fprintf('Rejected\n')
    end
end










