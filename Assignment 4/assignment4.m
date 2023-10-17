%% Analyzing Isometric Strength Data Assignment 4 Details

% Name: Elizabeth Klemm
% Due Date: October 26, 2023
% Code Description: This is the main script of a software package that
% takes isometric strength data over three days along with key demographic
% data (subjectID, age, gender, and weight) and returns individual and
% group metrics. It utilizes three functions - importfile.m,
% genderIsoCal.m, and dayComparer.m. 
%
% Tested and developed using MATLAB 2023b
% Tested and developed on Macbook Air M2

% Last updated: 10/17/2023

%% Import File
filename = uigetfile('*.csv','Select CSV file to read'); % display a prompt that asks the user to select the CSV file to read. Only CSV files are displayed for selection
[subjectID, age, gender, weight, day1, day2, day3] = importfile(filename); % use importfile.m function to import data. Function outputs are in brackets and are displayed as column vectors

%% Gender Based Isometric Strength

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(subjectID, gender, day1, day2, day3); % use genderIsoCal.m function with subjectID, gender, day1, day2, and day3 as inputs to get male and female individual and group isometric strength means across the three days

%% Day Comparer by Subject

day1toDay2 = dayComparer(subjectID,day1,day2); % use dayComparer.m function to output a list of subjects who improved from day 1 to day 2 - inputs are subjectID and day1 and day2 strength data
day2toDay3 = dayComparer(subjectID,day2,day3); % same but, day 2 to day 3 improvements

%% Weight normalized group means

for i=1:length(subjectID) % use a for loop to weight normalize each day's isokinetic data for each subject
    day1IndMeans(i)= day1(i)/weight(i); % for day 1, divide day 1 isokinetic data for subject i by the respective subject's weight. Weight normalized data is stored in day1IndMeans
    day2IndMeans(i) = day2(i)/weight(i); % repeat for day 2
    day3IndMeans(i) = day3(i)/weight(i); % repeat for day 3
end

normDay1mean = mean(day1IndMeans); % calculate group mean for day 1 weight normalized isokinetic data
normDay2mean = mean(day2IndMeans); % same for day 2
normDay3mean = mean(day3IndMeans); % same for day 3

%% Export results

results = cell(length(subjectID),9); % create an empty cell array that will hold all the results. The maximum number of rows is the number of subjects and there are 9 different results so 9 columns
results(1:length(maleIsoIndMeans),1)=num2cell(maleIsoIndMeans); %Convert the male Isometric strength Individual means to a cell from a double and put it in cell array column 1
results(1:length(femaleIsoIndMeans),2)=num2cell(femaleIsoIndMeans); % female isometric strength individual means into column 2 via same process
results(1,3)=num2cell(maleGroupIsoMean); % in column 3 is the male group isometric strength mean
results(1,4)=num2cell(femaleGroupIsoMean); % female isometric strength mean in column 4
results(1:length(day1toDay2),5)=cellstr(day1toDay2); % use cellstr to convert the string array holding the subjects that improved from day 1 to day 2 and place that list in column 5 of the cell array
results(1:length(day2toDay3),6)=cellstr(day2toDay3); % same thing for day 2 to day 3 in column 6
results(1,7)=num2cell(normDay1mean); % return to convert double to a cell to put the weight normalized isokinetic strength for day 1 in column 7
results(1,8)=num2cell(normDay2mean); % same for day 2 weight normalized data
results(1,9)=num2cell(normDay3mean); % same for day 3 weight normalized data

resultsTable = cell2table(results); % convert the cell array to a table called resultsTable
resultsTable.Properties.VariableNames = {'Male Isometric Individual Means','Female Isometric Individual Means','Male Group Isometric Mean','Female Group Isometric Mean','Day 1 to Day 2 Increase','Day 2 to Day 3 Increase','Weight Normalized Day 1 Mean','Weight Normalized Day 2 Mean', 'Weight Normalized Day 3 Mean'}; % put headers on the columns labeling the data columns
writetable(resultsTable,'iso_results.csv'); % write the table to a csv file called iso_results.csv




