% Class Exercises for Chapter 4
% Created by KJ on 1/23/2018

%% Q4.1: Making Matrices
A = [ones(2,5); repmat(2,3,5)]

B = ones(4,5);
B(9:16)=0

C = ones(6,5);
C([8:10 14:16]) = 0

D = ones(5);
for iRow = 1:5
    D(iRow,:) = iRow;
end
D

E = ones(6); %I looked at the answer key for this
for i = 1:6
    for j = 1:6
        if i<=j
            E(i,j)=2;
        end
    end
end
E

F = zeros(5);
for i = 1:5
    F(i,:) = [0 5 10 15 20];
end
F

G = 1:25;
G = reshape(G,5,5)

H = ones(8);
H(:,2:2:end) = 0

%1,3,5,7
I = zeros(8);
for iRow = 1:2:8
    for jCol = 1:2:8
        if iRow == jCol
            I(iRow,jCol) = 1;
        end
    end
end
I

J = zeros(5);
for i=1:5
        if i == 1
            J(i,:) = 0:4;
        elseif i > 1
            J(i,:) = [0:4]+(i-1);
        end
end
J

K=ones(5);
for iRow=1:5
    for jCol = 1:5
        K(iRow,jCol) = iRow*jCol;
    end
end
K

L = 1:25;
L =reshape(L,5,5)'

%% Q4.2: 3D Matrices

%a) 
mat1 = zeros(3,3,3);
mat1(2,2,2) = 1

%b)
mat2 = zeros(5,5,5);
mat2(2:4,2:4,2:4)=1

%% Q4.3: sub2ind and ind2sub

%a) 
sub2ind([4,3],3,2)

%b)
[r,c] = ind2sub([4,3],7)

%% Q4.4: Logical operations

x = 1;
y = 5;
z=1;

%a)
if x > 0
    disp('x is positive');
elseif x < 0
    disp('x is negative');
end

%b)
 x<2 || x>pi
 
 %c)
 x>2 && y<4 || z == 0

%% Q4.5: while loops

%ceil rounds the elements of X to the nearest integers towards infinity
%I had to look at the answer key to do this, but I used randi instead of
%rand

count = 1;
roll = ceil(randi(6,1,2));
while sum(roll) > 2 %while not [1 1], so total would be greater than 2
    count = count+1; %if not snake eyes, add 1 to the count
    roll = ceil(randi(6,1,2)); %roll again
end
disp(['Snake eyes after ', num2str(count),' rolls.']);
