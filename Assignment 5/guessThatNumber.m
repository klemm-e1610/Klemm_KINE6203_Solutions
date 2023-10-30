function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Elizabeth Klemm
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 
level = round(level); % added this statement to round the input to nearest whole number in case users enter a decimal number


% This while loop will always run because level can only be one value - if it 
% is 1/beginner, it will continue to check if level does not equal 2/moderate. 
% This is true (because it can't be 1 and 2), so now while loop runs which is not desirable.
% Additionally, level should be equal to a number (1, 2, or 3), not a
% string, so the conditions are changed from "beginner", "moderate", and
% "advanced" to less than 1 or greater than 3 in the while loop

while level < 1 || level > 3 
% while level ~= "beginner" || level ~= "moderate" || level ~= "advanced" 
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and
    % getting a incorrect use of '=' error message. Checking for equality so need two ==                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; % this previously said highest = advancedhighest. 
% The "h" in advancedHighested as it is defined in line 26 needed to be 
% capitalized. I found this error by running through the code and choosing 
% level 3 (advanced) and receiving an error of unrecognized variable 'advancedhighest'
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() * highest); % deleted the + 1 in this line of 
% code - with this logic the secret number will always be the maximum value 
% allowed for the level. This was detected by noticing that on my first run
% through the code, the secret number was 100, the highest number allowed
% for the moderate level I had chosen. This seemed odd to me so I looked
% into it and found the error.

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest % The number can be equal to the
    % variable highest, so this should be >, not >=. I found this by proofreading the code

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

% numOfTries = numOfTries + 1; % this line of code is improperly placed - it 
% should come after the if else if loop below

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber % this previously had a > instead of a <. This 
    % would mean the next 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
% elseif numOfTries == 1
elseif userGuess == secretNumber && numOfTries == 1 % elseif line above has incorrect logic - winning
    % in one turn means the guess is equal to the secret number and 
    % numOfTries==1. Found by being told I won the game on my first guess
    % when I did not.
fprintf('\nLucky You!  You got it on your first try!\n\n');
%else - This is an error. I found this through proofreading the code. By
%using else instead of elseif here, users will be told "Congratulations..."
%regardless of if their guess was correct or not. This was fixed by
%changing else to elseif userGuess == secretNumber
elseif userGuess== secretNumber
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); % added numOfTries here. As written, it will say
% "You got (secretNumber) in (secretNumber) tries." This was found via
% proofreading
end % this end was missing; found because running script stated that end was missing for while loop but on further examination it was really missing for this if elseif loop

numOfTries = numOfTries + 1; % new location for numOfTries variable.

%fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n'); % this line is
% misplaced. As written, it will be displayed after each user guess instead
% of at the end of the game. It was moved to be after the end of the while
% loop and was found via proofreading.

end  % of guessing while loop

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n'); % new location for Game Over display text

% end of game