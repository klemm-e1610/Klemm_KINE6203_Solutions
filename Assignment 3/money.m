function [total] = money(quarters,dimes,nickels,pennies)
%This function takes 4 numberic (double) inputs - the number of quarters, dimes, nickels, and
%pennies, in that order - and outputs the total sum of money
total= (quarters*0.25)+ (dimes*0.10) + (nickels*.05) + (pennies*0.01); % total (the output) is the
% input number of quarters multiplied by 0.25 + input number of dimes
% multiplied by 0.10 + input number of nickels multiplied by 0.05 + input
% number of pennies multiplied by 0.01

end