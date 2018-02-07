function [ mat ] = putinaperture( mat,rad,backlum,type )
%takes a matrix and windows it with a circular aperture of radius rad
%[ mat ] = putinaperture( mat,radius,backlum )

[X, Y] = meshgrid(linspace(-pi,pi,size(mat,1))); %meshgrid gives a vector that goes from -pi to pi in steps of 100; you get out two vectors (X and Y)
if strcmp(type,'circular')
mat(find(X.^2+Y.^2>rad^2)) = backlum;
elseif strcmp(type, 'gaussian')
   mat=mat.*exp(-(X.^2+Y.^2)/rad.^2); %equation for a Gaussian
else
    errordlg('Error in function putinaperture, aperture type not recognized')
end

end

