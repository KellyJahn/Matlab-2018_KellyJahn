% BreakfastCereal
% 
% Provides examples of fun things you can do with cereal boxes
% Inspired by my husband's mis-spelt childhood
%
%  written KJ 1/3/2018 for Matlab 2018

frosted = 'FROSTED FLAKES';
cheerios = 'CHEERIOS';
chemistry = 'CHEMISTRY';

cheerios_scrambled = cheerios;
cheerios_scrambled(1) = 'O';
cheerios_scrambled(5) = 'P';

disp(cheerios_scrambled);

chemistry_scrambled = chemistry;
chemistry_scrambled(1) = 'O';
chemistry_scrambled(8) = 'B';

disp(chemistry_scrambled);

%frosted(9) %spits out the 9th element of 'frosted' variable. The value '9' is called the 'index' into frosted
% in a string with one dimension, 'index' and 'subscript' are interchangeable
% terms. This is not the case with a matrix

%frosted_scrambled = frosted;

%frosted_scrambled(9) = 'E'; %make the 9th thing in frosted the variable E

%disp(frosted_scrambled);