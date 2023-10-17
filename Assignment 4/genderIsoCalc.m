function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(subjectID, gender, day1, day2, day3)
% This function calculates individual and group means for isokinetic
% strength data, separated by gender. 
%
% The function takes five inputs - SubjectID (string), subject gender (string), and subject
% day 1, day 2, and day 3 (doubles) isokinetic strength data. It uses a for
% loop to go through each subject and calculate individual means across the
% three days of data for each subject. Male data is placed into
% maleIsoIndMeans (double) and female data is placed into
% femaleIsoIndMeans. After calculating the individual means by gender,
% these are used to calculate the group means for each gender. There are
% four outputs - maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,
% femaleGroupIsoMean
%
% Tested and developed using MATLAB 2023b
% Tested and developed on Macbook Air M2
%
% Last updated: 10/17/2023
%%
numSub= length(subjectID); % calculate how many subjects are in dataset
maleSub= 1; % set maleSub number to 1 which will be used in for loop
femaleSub = 1; % same for female
maleIsoIndMeans=[]; % create an empty matrix that will contain the male individual isokinetic means across the three days
femaleIsoIndMeans=[]; % same for female
for i=1:numSub % for loop to calculate and record the individual mean for each subject
    if gender(i) == "M" % if subject is male
        maleIsoIndMeans(maleSub)=mean([day1(i),day2(i),day3(i)]); %calculate the subject's isokinetic strength mean and place it in the male output
        maleSub=maleSub+1; % Add one to maleSub so the next male subject is added to next column of double
    elseif gender(i)=="F" % same for female
        femaleIsoIndMeans(femaleSub)=mean([day1(i),day2(i),day3(i)]);
        femaleSub=femaleSub+1;
    end
end

maleGroupIsoMean=mean(maleIsoIndMeans,'all'); % calculate the male group mean 
femaleGroupIsoMean=mean(femaleIsoIndMeans,'all'); % same for female
maleIsoIndMeans=maleIsoIndMeans'; % transpose the maleIsoIndMeans variable so its a column vector instead of row vector
femaleIsoIndMeans=femaleIsoIndMeans'; % same for female

end