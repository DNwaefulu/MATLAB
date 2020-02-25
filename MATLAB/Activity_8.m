% In class examples to use STRCMP!

clc;
clear;
close;

%% comparing using if statement
x = 'HELLO';
fprintf('X = %s\n',x)
fprintf('X = %0.0f\n',x)


y = 'Helloo';
fprintf('Y = %s\n',y)
fprintf('Y = %0.0f\n',y)
%%
if strcmpi(x,y)
    fprintf('The text in x and y match exactly\n\n')
else
    fprintf('The text in x and y do not match at all\n\n')
end
%%

