function [dailyIncreaseIso] = dayComparer(subjectID,firstDay,secondDay)
% This function determines if a subject increased their isokinetic strength
% performance between two days. 

% The function takes three inputs - subjectID (a string) and the isokinetic
% data from two days in chronological order (doubles). If it is determined
% that the second day input is greater than the first day input, the
% respective subjectID is added to the string array output
% dailyIncreaseIso.

% Tested and developed using MATLAB 2023b
% Tested and developed on Macbook Air M2
%
% Last updated: 10/17/2023

%% 

numSub = length(subjectID); % determine the number of subjects
k=1; % set k to 1 - will be used to index within the output variable dailyIncreaseIso
for i=1:numSub % create a for loop to look through each subject
    if secondDay(i) > firstDay(i) % if the second day for subject i is greater than the first day...
        dailyIncreaseIso(k)=subjectID(i); % add subjectID i to the output variable in spot k
        k=k+1; % add 1 to k so the output is not overwritten 
    else
        %do nothing if there is not an increase
    end
end

dailyIncreaseIso=dailyIncreaseIso'; % transpose the output to be a column vector instead of row vector

end