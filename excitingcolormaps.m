% excitingcolormaps

img = reshape(1:64,8,8);
image(img); colormap(gray(64)); %a colormap that goes up in steps of 1/64 until it gets to 1 at end of each column
axis square %makes each tick mark the same
axis off %takes off labels
drawnow
pause

%change the paint pots that each cell are painted with (the values still
%stay the same as in img)
for i=1:200
    pp=rand(64,3)
    colormap(pp)
    drawnow; %refreshes image before re-doing the loop
end

%replaces all the squares with random numbers

