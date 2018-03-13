%% Matlab project, Due March 14, 2018
% 
% Written by Kelly Jahn

% This script plots amplitude growth functions measured with the 
% electrically-evoked compound action potential (ECAP). Data from 4
% electrodes in one subject are plotted (one electrode per subplot).
% It also calculates the slope (i.e., amplitude growth rate) 
% and x-intercept (i.e., estimated threshold) for each electrode/growth function. 
%
%%
clear all

xlsfile = '/Users/kelly1jahn/Desktop/MATLAB_2018/Matlab-2018_KellyJahn/Final_project_data_KellyJahn.xlsx';
[~, headers]=xlsread(xlsfile,'A1:F1');
[~,~,data]=xlsread(xlsfile,'A2:F40');

%Put all the data into the appropriate vectors for plotting
threshold_header = find(strcmp(headers,'High or Low THR?'));
ECAP_amp_header = find(strcmp(headers,'ECAP (microV)'));
stim_header = find(strcmp(headers, 'Stim (dB)'));

low_thr_idx = find(strcmp(data(:,threshold_header),'L'));
sec_low_thr_idx = find(strcmp(data(:,threshold_header),'2L'));
high_thr_idx = find(strcmp(data(:,threshold_header),'H'));
sec_high_thr_idx = find(strcmp(data(:,threshold_header),'2H'));

low_thr_ECAP = data(low_thr_idx, ECAP_amp_header);
low_thr_ECAP = cell2mat(low_thr_ECAP);
low_thr_stim = data(low_thr_idx, stim_header);
low_thr_stim = cell2mat(low_thr_stim);

sec_low_thr_ECAP = data(sec_low_thr_idx, ECAP_amp_header);
sec_low_thr_ECAP = cell2mat(sec_low_thr_ECAP);
sec_low_thr_stim = data(sec_low_thr_idx, stim_header);
sec_low_thr_stim = cell2mat(sec_low_thr_stim);

high_thr_ECAP = data(high_thr_idx, ECAP_amp_header);
high_thr_ECAP = cell2mat(high_thr_ECAP);
high_thr_stim = data(high_thr_idx, stim_header);
high_thr_stim = cell2mat(high_thr_stim);

sec_high_thr_ECAP = data(sec_high_thr_idx, ECAP_amp_header);
sec_high_thr_ECAP = cell2mat(sec_high_thr_ECAP);
sec_high_thr_stim = data(sec_high_thr_idx, stim_header);
sec_high_thr_stim = cell2mat(sec_high_thr_stim);

% Plot the growth function for the channel with the lowest behavioral
% threshold
figure(1);
subplot(2,2,1);
plot(low_thr_stim, low_thr_ECAP,'o');
P = polyfit(low_thr_stim, low_thr_ECAP,1);
yfit = P(1)*low_thr_stim+P(2);
hold on;
plot(low_thr_stim, yfit, 'r-.');
ylabel('ECAP Amplitude (microV)');
xlabel('Probe Current Level (dB rel 1 microA)');
title('Lowest sQP Threshold Channel');
legend('Data','Regression Line', 'Location', 'Southeast');

%Calculate parameters of interest for the channel with the lowest behavioral
% threshold and display them in the command window
TNRI = -P(2)/P(1);
slope = P(1);
b0 = P(2);
disp('Data for Lowest sQP Threshold Channel: '), 
disp('TNRI = ');
disp(TNRI);
disp('Slope = ');
disp(slope);
disp('y-intercept = ');
disp(b0);

%Plot growth function for channel with second lowest behavioral threshold
subplot(2,2,2);
plot(sec_low_thr_stim, sec_low_thr_ECAP,'o');
P = polyfit(sec_low_thr_stim, sec_low_thr_ECAP,1);
yfit = P(1)*sec_low_thr_stim+P(2);
hold on;
plot(sec_low_thr_stim, yfit, 'r-.');
ylabel('ECAP Amplitude (microV)');
xlabel('Probe Current Level (dB rel 1 microA)');
title('Second Lowest sQP Threshold Channel');
legend('Data','Regression Line', 'Location', 'Southeast');

%Calculate parameters of interest for the channel with the second lowest 
%behavioral threshold and display them in the command window
TNRI = -P(2)/P(1);
slope = P(1);
b0 = P(2);
disp('Data for Second Lowest sQP Threshold Channel: '), 
disp('TNRI = ');
disp(TNRI);
disp('Slope = ');
disp(slope);
disp('y-intercept = ');
disp(b0);

%Plot growth function for channel with highest behavioral threshold
subplot(2,2,3);
plot(high_thr_stim, high_thr_ECAP,'o');
P = polyfit(high_thr_stim, high_thr_ECAP,1);
yfit = P(1)*high_thr_stim+P(2);
hold on;
plot(high_thr_stim, yfit, 'r-.');
ylabel('ECAP Amplitude (microV)');
xlabel('Probe Current Level (dB rel 1 microA)');
title('Highest sQP Threshold Channel');
legend('Data','Regression Line', 'Location', 'Southeast');

%Calculate parameters of interest for the channel with the highest behavioral
% threshold and display them in the command window
TNRI = -P(2)/P(1);
slope = P(1);
b0 = P(2);
disp('Data for Highest sQP Threshold Channel: '), 
disp('TNRI = ');
disp(TNRI);
disp('Slope = ');
disp(slope);
disp('y-intercept = ');
disp(b0);

%Plot growth function for channel with second highest behavioral threshold
subplot(2,2,4);
plot(sec_high_thr_stim, sec_high_thr_ECAP,'o');
P = polyfit(sec_high_thr_stim, sec_high_thr_ECAP,1);
yfit = P(1)*sec_high_thr_stim+P(2);
hold on;
plot(sec_high_thr_stim, yfit, 'r-.');
ylabel('ECAP Amplitude (microV)');
xlabel('Probe Current Level (dB rel 1 microA)');
title('Second Highest sQP Threshold Channel');
legend('Data','Regression Line', 'Location', 'Southeast');

%Calculate parameters of interest for the channel with the second highest behavioral
% threshold and display them in the command window
TNRI = -P(2)/P(1);
slope = P(1);
b0 = P(2);
disp('Data for Second Highest sQP Threshold Channel: '), 
disp('TNRI = ');
disp(TNRI);
disp('Slope = ');
disp(slope);
disp('y-intercept = ');
disp(b0);

