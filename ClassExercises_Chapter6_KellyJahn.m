%% Matlab Exercises 6
%% Kelly Jahn, due 2/12/2018

%% Q6.1 Lightness constancy

n=101;
[X,Y]=meshgrid(linspace(-2,2,n));
X(25:35,10:90) = .1;
X(65:75,10:90) = 1;
figure;
imagesc(X); colormap(gray(256));

%% Q6.2 Peripheral drift illusion

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
imagesc(illusion);
axis square
axis off
colormap(gray(256))
