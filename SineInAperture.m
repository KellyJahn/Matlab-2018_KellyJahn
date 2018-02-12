%SineInAperture
%downloade Ione's file...this is messed up

clear all
close all


amp = 1; stim(1).sf= 6; rad = pi; size_ap = 100;
backlum = 128.5;

[sw2D] = make2Dsinewave(amp, size_ap, sf); %now we are using functions that we created
[sw2D] = putinaperture(sw2D,rad,backlum);
image(sw2D); colormap(gray(256))

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
%% Gaussian gabor

clear all
close all
amp=.5; size_ap=100;
backlum=128.5;
sd=pi/4;

[X, Y] = meshgrid(linspace(-pi,pi,size_ap));
G=exp(-(X.^2+Y.^2)/sd.^2); %equation for a Gaussian
imagesc(G) %this is a Gaussian

[X, Y] = meshgrid(linspace(-pi,pi,size_ap));
R = sqrt(X.^2+Y.^2); imagesc(R)
T = atan2(Y,X);
Tradial = sin(5*T)
imagesc(Tradial)

spiral = sin(2*pi*R+T)
imagesc(spiral)

%% Build the array
clear all
close all
amp=.5; size_ap=100;
backlum=128.5;

naps = 2; sep = 50;
bigMatSize = [(naps+1)*sep]+[size_ap*naps]; 
bigMat = backlum*ones(bigMatSize);

stpt=[sep (sep*2)+size_ap];

for i = 1:naps
    for j = 1:naps
        rad = (i*j)/2; sf=3+(mod(i+j,2)*3);
        [sw2D] = make2Dsinewave(amp, size_ap, sf);
        [sw2D] = putinaperture(sw2D,rad,backlum, 'gaussian');
        bigMat(stpt(i):stpt(i)+size_ap-1, stpt(j):stpt(j)+size_ap-1) = sw2D;
    end
end
imagesc(bigMat)
colormap(gray(256))



