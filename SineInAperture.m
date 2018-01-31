%SineInAperture

clear all
close all

amp = .5;
x = linspace(-pi,pi,100);
sf= 6; %spatial frequency, number of times it cycles b/t -pi and pi
sinewave = sin(x*sf);

plot(x,sinewave)

oneM = ones(size(sinewave));

sinewave2D = amp*(oneM'*sinewave); %gives a 100x100 matrix that replicates sinewave along each row; multiplying by amp makes it go b/t dark and light gray
sinewave2D_scaled =  ((sinewave2D+1)*127.5)+1; %why 127.5? we have 256 values in colormap

image(sinewave2D_scaled); colormap(gray(256))

%imagesc automatically re-scales your colormap

rad = 1.7;
for r = 1:length(x) %along each row from 1:100
    for c = 1:length(x) %along each column from 1:100
        if x(r)^2+x(c)^2 < rad^2
            sinewave2D_scaled(r,c) = 128.5; %if the values in that index summed are greater than radius squared, set that value to 128.5
        end
    end
end
image(sinewave2D_scaled);
colormap(gray(256))

%a faster way without for loop

rad = 1;
[X, Y] = meshgrid(linspace(-pi,pi,100));
ind=find(X.^2+Y.^2<rad^2);
sinewave2D_scaled(ind) = 128.5;
image(sinewave2D_scaled);


imagesc(X)
imagesc(Y)



