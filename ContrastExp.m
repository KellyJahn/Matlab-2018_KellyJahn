contrast = linspace(0,1,5);
size=2:2:12;

%number correct
nc = [5 6 5 6 4; 
    4 6 8 9 9;
    6 5 7 10 8;
    3 5 8 9 10;
    5 6 9 10 10;
    6 5 8 10 9];

image(contrast, size, nc);
colormap(gray(10)); %10 was chosen because the values in nc go up to 10
ylabel('size');
xlabel('contrast');

set(gca, 'XTick', contrast, 'XTickLabel', contrast)

%percent correct
pc=100*nc/10;
image(pc)
pcmap = colormap(gray(100));
pcmap(1:50,:) = 0; %anything less than 50% will be zero/black
colormap(pcmap)