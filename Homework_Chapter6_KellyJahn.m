%% Matlab Homework Ch 6
% Kelly Jahn 
% Due 2/15/2018

%% Q6.1 Koffka Ring
darkgray = [.4 .4 .4];
midgray = [.6 .6 .6];
lightgray = [.8 .8 .8];
white = [1 1 1];
cmap1 = [darkgray; midgray; lightgray]

x=ones(100);
x(:,51:100) = 3;

ringWidth = 1/3;
imgSize = 100;
[X,Y] = meshgrid(linspace(-1,1,imgSize));
R = sqrt(X.^2+Y.^2);

Rinner = zeros(size(R));
Rinner(find(R<ringWidth/2))=2;
Router = zeros(size(R));
Router(find(R<1.5*ringWidth))=2;

Ring = Router-Rinner;
find(Ring==2)
x(find(Ring==2)) = 2;

figure(1);
imagesc(x); colormap(cmap1);

%second image
cmap2 = [darkgray; midgray; lightgray; white]

ringWidth = 1/3;
imgSize = 100;
[X,Y] = meshgrid(linspace(-1,1,imgSize));
R = sqrt(X.^2+Y.^2);

Rinner = zeros(size(R));
Rinner(find(R<ringWidth/2))=2;

Router = zeros(size(R));
Router(find(R<1.5*ringWidth))=2;

Ring = Router-Rinner;
find(Ring==2)
x(find(Ring==2)) = 2;

x(:,45:55) = 4;

figure(2);
imagesc(x); colormap(cmap2);

%third image
x=ones(100);
x(:,51:100) = 3;

ringWidth = 1/3;
imgSize = 100;
[X,Y] = meshgrid(linspace(-1,1,imgSize));
R = sqrt(X.^2+Y.^2);

Rinner = zeros(size(R));
Rinner(find(R<ringWidth/2))=2;
Router = zeros(size(R));
Router(find(R<1.5*ringWidth))=2;

Ring = Router-Rinner;
find(Ring==2)
x(find(Ring==2)) = 2;

bigMatLeft=x(:,1:size(x,2)/2);
bigMatRight=x(:,size(x,2)/2+1:end);

addFac=round(imgSize*ringWidth/2);
bigbigMat=ones(imgSize,imgSize+addFac);
bigbigMat(:,1:size(bigMatLeft,2))=bigMatLeft;
bigbigMat(:,size(bigMatLeft, 2)+addFac+1:end)=bigMatRight;

figure(3);
imagesc(bigbigMat)
colormap(cmap1)

finalMat=ones(imgSize+addFac, imgSize);
finalMat(1:size(bigMatLeft, 1), 1:size(bigMatLeft,2))=bigMatLeft;
finalMat(addFac+1:addFac+size(bigMatLeft, 1), ...
   size(bigMatLeft,2)+1:end)=bigMatRight;
finalMat(1:25,51:end) = 3;
imagesc(finalMat)



%% Q6.2 Funkystim
n=701;
nseg = 6; %number of segments
radius = .7; %radius of the aperture

[X,Y] = meshgrid(linspace(-1,1,n));

%create segment pattern

T1=atan2(Y,X) * 180/pi;
T1=mod(T1, 30);
T2=mod(-T1+15,30);

%create aperture
R = X.^2+Y.^2;
R=R<.5;
T1(R)=T2(R);
figure(4);
imagesc(T1); colormap(gray(256));
axis square
axis off

R = X.^2+Y.^2;
R=R<.5;
T2(R)=T1(R);
figure(5);
imagesc(T2); colormap(gray(256));
axis square
axis off
