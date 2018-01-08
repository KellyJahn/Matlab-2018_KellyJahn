% BreakfastCereal
% 
% Provides examples of fun things you can do with cereal boxes
% Inspired by my husband's mis-spelt childhood
%
%  written KJ 1/3/2018 for Matlab 2018

frosted = 'FROSTED FLAKES';
cheerios = 'CHEERIOS';

frosted_scrambled = frosted;

frosted_scrambled(9) = 'E'; %make the 9th thing in frosted the variable E

frosted_scrambled([6 13]) = ['F' 'X'];

%ff=find(frosted == 'F') %double equal signs checks whether something is the same or not, whereas single = sets something equal to another
%asking which values in the variable 'frosted' are 'f'

%disp(frosted_scrambled);

%Exercise 2.2
str = 'MACARONI AND CHEESE';
id1=str([1 2 7 9 14:19]);
id2=str([15 16 5 9 1 8 7 12 9 8 18 9 3 15 8 7 19 18 19]);
disp(id1);
disp(id2);

%Exercise 2.3
A = 1:10;
A2 = linspace(1,10,10);
disp(A);
disp(A2);

B = 10:2:18;
B2 = linspace(10,18,5);
disp(B);
disp(B2);

C = 19:-1:15;
C2 = linspace(19,15,5);
disp(C);
disp(C2);

D = 10:-2:-4;
D2 = linspace(10,-4,8);
disp(D);
disp(D2);

E = 0:3.1416:15.7080;
E2 = linspace(0,15.7080,6);
disp(E);
disp(E2);

E_pi = 0:pi:15.7080;
E2_pi = linspace(0,15.7080,6);
disp(E);
disp(E2);

%Exercise 2.4
str2 = 'aaaaaaaaaaaaaaaaaaaa';
str2(3:3:20) = ['c'];
disp(str2);

str2(2:3:20) = ['b'];
disp(str2);

str2([4:6 10:12 16:18]) = ['d' 'e' 'f' 'd' 'e' 'f' 'd' 'e' 'f'];
disp(str2);
disp(str2([6 12 18]));



