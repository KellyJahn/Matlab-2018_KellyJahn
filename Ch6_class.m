%% Matlab HW Ch 6
% Done in class with Ione

white = 1;
lightgray=0.8;
darkgray = 0.4;
midgray = 0.6;

[X,Y]=meshgrid(linspace(-1,1,100)); % square that is 100x100 going from -1 to 1 in each dimension
R=sqrt((X.^2)+(Y.^2)); %This gives you values to use for the radius
%R=atan(Y./X); % see what happens when you plot these different things
%R = atan2(X,Y);

%WHERE we want the ring to be
Router = R<0.8; %truth statement that gives a logical array
%Router = zeros(size(R)); %another way to do the above
%Router(find(R<0.8))=1;

Rinner = zeros(size(R));
Rinner(find(R<0.6))=1;

Ring = Router-Rinner;

bigMat=ones(size(R))*darkgray;
bigMat(:,51:end) = lightgray;

bigMat(find(Ring))= midgray;

image((bigMat*255)+1); colormap(gray(256)); %values go from 0 to 1, so we make them go between 1 and 256
axis square

bigMatleft = bigMat(:,size(bigMat,2)/2); %taking all the rows and first 50 columns (left side)
bigMatright = bigMat(:,size(bigMat,2)/2+1:end); %right side

bigbigMat = white*ones(100,125); %putting in an extra 25 columns to make second figure
bigbigMat(:,1:size(bigMatleft,2)) = bigMatleft;
bigbigMat(:,1+end-size(bigMatright,2):end) = bigMatright;
imagesc(bigbigMat)

%pull rest from github

%% Funkystim

[X,Y] = meshgrid(linspace(-1,1,500));

T1=atan2(Y,X)*(180/pi); %turned this into degrees
T1=mod(T1,30); %because there are 12 spokes in the circle, whose circumference is 360
figure(1)
imagesc(T1); colormap(gray)


T2=atan2(X,Y)*(180/pi); %turned this into degrees
T2=mod(T2,30);
figure(2)
imagesc(T2); colormap(gray)


R=X.^2+Y.^2;
R=R<0.5;
T1(R)=T2(R);
imagesc(T1);

%look at code for shifting the circle

