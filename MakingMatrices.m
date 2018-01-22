%% making matrices
% provides cunning examples of ways to make matrices
% written KJ 1/22/2018

mat1=zeros(5,4);
mat2 = mat1;
mat2(1:5,3) = 1

mat2 = mat1;
mat2(1:end,3) = 6

mat2 = mat1;
mat2(:,3) = 6 

mat2 = mat1;
mat2(4,1:4) = 1 

mat2=mat1;
mat2(4,:) = 1

%% Now for something interesting

mat = zeros(4); %this gives a 4x4 matrix of zeros
for i = 1:4
    mat(i,i) = i
   %pause means to stop the loop until I press any key
end

%%
mat = zeros(6);
for i = 1:6
    mat(i,:) = [-2 0 -1 1 2 3];
end

%%
mat = zeros(5)
for i = 1:5
    mat(i,:) = [0 0 1 1 0]+i
end
disp(i)

mat=zeros(3,4)
for i = 1:3
    for j = 1:4
        mat(i,j) = i+j
    end
end
%%
mat = zeros(3,4)
for iRow = 1:3
    for iCol = 1:4
        mat(iRow,iCol) = ((iRow-1)*4)+iCol
    end
end
%%
%this is the same thing as above code
mat = zeros(3,4);
for iRow = 1:3
        mat(iRow,:) = ((iRow-1)*4)+[1:4];
end
mat

v = 1:12
mat2=reshape(v,4,3)'
mat2=reshape(1:12,4,3)'; %does the same thing as line above

mat = [1 2 3; 4 5 6; 7 8 9];
vect = mat(:)

%% repmat

x = [1 5 3 2 5]
size(x)
X = repmat(x, 3, 2)
size(X)

X = [2 3 4; 5 6 7];
size(X)
Y = repmat(X, 3, 2)
size(Y)

%%
rmat = rand(5,5)
rmat2 = rand(5,5)

for iRow = 1:size(rmat,1)
    for iCol=1:size(rmat,2)
        if rmat(iRow,iCol) < rmat2(iRow,iCol)
            rmat(iRow,iCol) = rmat2(iRow,iCol);
        end
    end
end
rmat

%%
n1=3
if round(n1) == n1
    disp('n is a round number')
end

%%
n=-1
if n
    disp('hi there cutie pants');
else 
    disp('hi there dearie'); %this will only be displayed if n = 0
end

%%
n=-1

if n<0
    disp('bye bye sweetie');
elseif n
    disp('hi there cutie pants');
else
    disp('hi there dearie'); 
end

%%

n = 10

if n <= -.6
    disp('I love Calvin and Hobbes')
elseif n <= 0
    disp('Garfield sucks')
elseif n > 0 && n <=0.6
    disp('muchas smoochas')
else
    disp('snuggle-puppy')
end

%% usually the computer runs in a 'while loop' in reaction time experiments to monitor when the subject presses the key
n=0;
while n<1
    n=randn(1); % while n is <1, pull out a random number until it is no longer <1
    disp(n)
end
%% This code just does nothing for 3 seconds
tic %starts a stopwatch
while toc < 3
    ;
end