%% Matlab Homework Ch 6
% Kelly Jahn 
% Due 2/15/2018

%% Q6.1 Koffka Ring


darkgray = [.4 .4 .4];
lightgray = [.8 .8 .8];
white = [1 1 1];
cmap = [darkgray; lightgray; white]

x=ones(16);
x(:,9:16) = 2;
x(:,[1 16]) = 3;
x([1 16],:) = 3;

radius = 0.7;

radiusimage = sqrt(x.^2+x.^2);
aperture=NaN(size(radiusimage));
aperture(radiusimage<radius)=1;
aperture(radiusimage>=radius)=0;

image(x); colormap(cmap);



%% Q6.2 Funkystim

n=701;
nseg = 6; %number of segments
radius = .7; %radius of the aperture

[X,Y] = meshgrid(linspace(-1,1,n));

%create segment pattern

theta = atan2(Y,X)./pi;
theta = mod(theta*nseg,1);
%theta=max(theta(:))-theta; %this flips the direction 

%create aperture
radiusimage = sqrt(X.^2+Y.^2);
aperture=NaN(size(radiusimage));
aperture(radiusimage<radius)=1;
aperture(radiusimage>=radius)=0;

illusion=theta.*aperture;
imagesc(theta(illusion));
axis square
axis off
colormap(gray(256))