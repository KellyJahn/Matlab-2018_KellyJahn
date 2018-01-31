%SineInAperture

clear all
close all

amp = 2;
sf= 6; %spatial frequency, number of times it cycles b/t -pi and pi
rad = pi;
x = linspace(-pi,pi,100);

sinewave = sin(x*sf);
plot(x,sinewave)

oneM = ones(size(sinewave));

sinewave2D = amp*(oneM'*sinewave); %gives a 100x100 matrix that replicates sinewave along each row; multiplying by amp makes it go b/t dark and light gray
sinewave2D_scaled = ((sinewave2D+1)*127.5)+1; %why 127.5? we have 256 values in colormap; adding 1 to "sinewave2D" adds 1 to the amplitude

image(sinewave2D_scaled); colormap(gray(256))

%a faster way to do the loop below this without for loop
[X, Y] = meshgrid(linspace(-pi,pi,100)); %meshgrid gives a vector that goes from -pi to pi in steps of 100; you get out two vectors (X and Y)
ind=find(X.^2+Y.^2>rad^2); %where are the values that are greater than rad^2
sinewave2D_scaled(ind) = 127.5; %set those values to gray
image(sinewave2D_scaled);
colormap(gray(256))

%imagesc automatically re-scales your colormap

% rad = 1.7;
% for r = 1:length(x) %along each row from 1:100
%    for c = 1:length(x) %along each column from 1:100
%         if x(r)^2+x(c)^2 < rad^2
%             sinewave2D_scaled(r,c) = 128.5; %if the values in that index summed are greater than radius squared, set that value to 128.5
%         end
%     end
% end
% image(sinewave2D_scaled);
% colormap(gray(256))

%% Build the array

x = linspace(-pi,pi,100);
naps = 2;
sep = 50;
bigMatSize = [(naps+1)*sep]+[length(x)*naps]; 
bigMat = 127.5*ones(bigMatSize);

stpt=[sep (sep*2)+length(x)];

for i = 1:naps
    for j = 1:naps
bigMat(stpt(i):stpt(i)+length(x)-1, stpt(j):stpt(j)+length(x)-1) = ...
    sinewave2D_scaled;
    end
end
imagesc(bigMat)
colormap(gray(256))



