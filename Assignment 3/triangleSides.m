function [Valid] = triangleSides(proposedSides)
% This function takes an array as an input and outputs a logical value if
% the 3 values in the array would be able to create a valid triangle (i.e. 
% the sum of the smaller sides is greater than the biggest side). The
% input is expected to be a 1x3 array, but the function will not break if
% it is different - just won't give expected results. 
sort(proposedSides); % sort the input array from smallest to largest
Valid = (proposedSides(1)+proposedSides(2)) > proposedSides(3) % provide a logical output of 1 if the entered side lengths create a valid triangle (i.e. smallest side + middle length side is greater than longest side). Otherwise, statement is false, and valid = 0 (false)
end