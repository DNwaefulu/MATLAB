%{
Deion Nwawfulu  ENGR 1300-002  2016-5-12
dcn6334_RQ4_CH19: Write a program that asks the user to enter a wavelength
and then indicate which color of the wavelength falls in or state if it is
not within the visible spectrum.
Nano: User specified wavelength [nanometer, nm]
%}

clc;
clear;
close all;

Nano = input('Please enter specified wavelength of color: ');

if Nano < 400 || Nano > 700
    error('Error: Wavelength is not within the specified interval')
elseif Nano <= 700 && Nano > 635
    fprintf('Red\n')
elseif Nano <= 635 && Nano > 590
    fprintf('Orange\n')
elseif Nano <= 590 && Nano > 560
    fprintf('Yellow\n')
elseif Nano <= 560 && Nano > 490
    fprintf('Green\n')
elseif Nano <= 490 && Nano > 450
    fprintf('Blue\n')
else
    fprintf('Violet\n')
end