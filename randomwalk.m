% randomwalk
% woman walking on tight rope, rat making decisions, stock market

nsteps = 20; %each step is a separate event
timepts = 0:0.1:3; %each step takes three seconds

forwardspeed = .5;
noise = 0.3; %constant amount of noise like muscle noise, etc

stepsize = 5; %inches

footposition(1) = 0;
for i = 2:length(timepts)
    footposition(i) = footposition(i-1) + ...
        forwardspeed + ...
        (noise*randn(1,1)); %foot position over time
    if footposition(i) >= stepsize
        footposition(i:length(timepts)) = NaN; %if she goes beyond 5 inches
        i = length(timepts)+1; %breaks out of the loop because i is now greater than length(timepts)
    end
end

plot(timepts, footposition)

%this plots one step