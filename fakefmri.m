% fakeBrain

TR=2; %time it takes per measurement, collect slice of brain every 2 seconds
t=1:TR:239; %vector of 120 time points
brain = randn(64,64,28,120); %this is 4-dimensional matrix of fake data generated with random normal numbers; 28 slices, 2 sec per slice, 120 time points
%rows, columns, depth, time

%happy = repmat(0,10,1); %create a vector that replicates 0 in 10 rows and 1 column
%sad = repmat(1,10,1);
%happysad = [happy; sad];
%design = repmat(happysad,6,1); %we present 120 presentations of happy and
%sad, alternating 10 each of happy and sad



design = repmat([repmat(0,10,1); repmat(1,10,1);],6,1); % all of the above in 1 line
ROI = [20:30, 12:40, 18:23]; %this is the brain region we are interested in

brain(20:30, 12:40, 18:23, find(design)) = ...
    brain(20:30, 12:40, 18:23, find(design))-1; %find(design) finds all positive integers in "design"; find(~design) finds all 'non-positive integers' (~ means 'not')
%^^ find all these numbers and replace them with themselves minus 1
%(basically we are just creating a fake ROI that looks different)

imagesc(brain(:,:,20,13)); %produces color gradient graph at one slice (20) at one timepoint (13)

sad = mean(brain(:,:,20,find(design)),4); %looking for all the sad data and averaging it across the 4th dimension
happy = mean(brain(:,:,20,find(~design)),4);

subplot(1,2,1);

imagesc(sad);

subplot(1,2,2);

imagesc(happy);

