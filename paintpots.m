% paintpots.m

img = 1:5;

%vectors of levels of red, green, blue colors - represented by columns
pp1 = [0 0 0; .25 .25 .25; .5 .5 .5; .75 .75 .75; 1 1 1];
pp1 = repmat([0:.25:1]',1,3); % same as above pp1
pp2 = [0 0 1; 1 0 0; 0 1 0; .5 0 1; 1 0 1];

pp2(5,:)=[0 0 0];



image(img); colormap(pp2) %colormaps always have 3 columns, any number of rows



