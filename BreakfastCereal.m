% BreakfastCereal
% 
% Ch 2 Exercises
%  written KJ 1/3/2018 for Matlab 2018

%% Example
frosted = 'FROSTED FLAKES';

frosted_scrambled = frosted;
frosted_scrambled(9) = 'E'; %make the 9th thing in frosted the variable E
frosted_scrambled([6 13]) = ['F' 'X'];

ff=find(frosted == 'F'); %double equal signs checks whether something is the same or not, whereas single = sets something equal to another
%asking which values in the variable 'frosted' are 'f'
disp(frosted_scrambled);

%% Q2.1: Replacing letters in strings
cheerios = 'CHEERIOS';

cheerios_scrambled = cheerios;
cheerios_scrambled([1 5]) = ['O' 'P'];
disp(cheerios_scrambled);

chemistry = 'CHEMISTRY';
chemistry_scrambled = chemistry;
chemistry_scrambled([1 8]) = ['O' 'B'];
disp(chemistry_scrambled);

mac = 'MACARONI AND CHEESE';
mac_scrambled = mac;
mac_scrambled([3 14 8]) = ['O' 'O' 'R'];
disp(mac_scrambled);

%% Q2.2: More replacing letters in strings
str = 'MACARONI AND CHEESE';
id1=str([1 2 7 9 14:19]);
id2=str([15 16 5 9 1 8 7 12 9 8 18 9 3 15 8 7 19 18 19]);
disp(id1);
disp(id2);

%% Q2.3: Creating vectors
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

%% Q2.4: More indexing into strings
str2 = 'aaaaaaaaaaaaaaaaaaaa';
str2(3:3:end) = 'c';
disp(str2);

str2(2:3:end) = 'b';
disp(str2);

disp(str2(3:3:end)); %demonstrating that every 3rd letter is 'c'

str2(4:6) = 'def';
disp(str2);

str2([4:6 10:12 16:18]) = 'defdefdef';
str2([4+(0:2) 10+(0:2) 16+(0:2)]) = 'defdefdef'; %this is the same as the line above
disp(str2);

disp(str2([6 12 18])); % demonstrating that 6th, 12th and 18th letters are 'f'

%% Q2.5: Indexing into vectors

time = 12:1.23:100; %pick an ending number that would give more than 40 measurements
time = time(1:40); %truncate it to 40
disp(time(5));
disp(time(end));

%another way: time = linspace(12,12+(39*1.23),40)

%% Q2.6: Still more indexing
resp='rerekererererererererererererererererere';
disp(find(resp == 'k')); % finding the index with the 'k'
% or just display 'k': disp(resp(5));

resp(5) = 'r';
disp(resp);
disp(find(resp == 'e')); %finding the indices where 'e' was pressed. This is how I originally did it
disp(resp(2:2:end)); %solution from book - easier to see that all the even ones are 'e'

%% Q2.7: Checking your understanding
vect = 12:-1:1;

%Guess outputs
%a) vect(1:12) = [12 11 10 9 8 7 6 5 4 3 2 1]
%b) vect(12:-1:1) = [1 2 3 4 5 6 7 8 9 10 11 12]
%c) vect([10 12 9 12 8 4]) = [3 1 4 1 5 9]
%d) vect(1:2) = [12 11]
%e) vect(vect(1:2)) = [1 2]
%f) vect(vect) = [1 2 3 4 5 6 7 8 9 10 11 12]
%g) vect(vect(vect)) = [12 11 10 9 8 7 6 5 4 3 2 1]