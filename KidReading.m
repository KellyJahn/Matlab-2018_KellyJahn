clear all

for k=1:10 %number of kids in the study
    kid10(k,:) = [2:7]+randn(1,6);
    kid5(k,:) = [2:7]+randn(1,6)+3; %data + random noise + 3 extra seconds to read for younger kids
end

subplot(1,2,1)
image(kid5+1); colormap(gray(14)) %added 1 because some of the values in kid5 were negative 
subplot(1,2,2)
imagesc(kid10+1); colormap(gray(14))