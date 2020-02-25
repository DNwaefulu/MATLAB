clc;
clear;
close all;

B = input('Enter a variable: ');
A = size(B);

if A(1) == 1 && A(2) == 1
    fprintf('Scalar\n')
elseif A(1) == 1 && A(2) > 1
    fprintf('Row vector\n')
elseif A(1) > 1 && A(2) == 1
    fprintf('Column vector\n')
else
    fprintf('Matrix\n')
end