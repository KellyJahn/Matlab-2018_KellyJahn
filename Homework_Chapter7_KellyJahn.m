%% Q7.1 Structures
% Homework Ch 7 
% Kelly Jahn
% Due March 7, 2018

% create a structure, mystruct that contains 3 fields.
% mystring : which contains your name
% mychange: a double (default for any number) containing the amount of loose change in your wallet or puse
% mygender: a logical, with 1 for female and 0 for male

mystruct.mystring = 'Kelly';
mystruct.mychange = 36; %cents
mystruct.mygender = logical(1);


% now make a second element in that structure (mystruct(2).fieldname) with
% the same information for someone else (imaginary is fine).

mystruct(2).mystring = 'Russell';
mystruct(2).mychange = 3; %cents
mystruct(2).mygender = logical(0);


%% Q 7.2 Cell arrays

% Make a 3 (fields) x 2 (individuals) cell array that contains all the
% information of the structure above

bigCell{1} = {'Kelly', 'Russell'};
bigCell{2} = [36 3];
bigCell{3} = [logical(1) logical(0)];

% pull out the name of the second individual.

p2 = bigCell{1}(2) 

% pull out the amount of change that you had and add it to amount of change the other individual had.

total_change = bigCell{2}(1)+bigCell{2}(2)



