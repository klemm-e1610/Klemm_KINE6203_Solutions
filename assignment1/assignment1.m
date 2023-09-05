%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Elizabeth Klemm
%
% Due: September 5, 2023
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'https://www.mathworks.com/help/matlab/'

% 2. What does the command 'clear all' do?
%
% Answer: The "clear all" command clears the workspace of ALL variables
%


% 3. Find a matlab function to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

averageAnswer = mean([1 7 21 32 67 32453] )

% 4. What command would you type to see a list of all installed toolboxes?

       toolboxes = ver; %<- command goes here
       toolboxes = struct2table(toolboxes)

% 5. Write some commands that would return a list of all of the available 
% functions in the image processing toolbox? 

image_processing_toolbox_functions = web('https://www.mathworks.com/help/images/referencelist.html?type=function&s_tid=CRUX_topnav');

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
plot(x,y)        %<- command goes here
xlabel('angle (rad)')
ylabel ('sin(x)')
title('Sin(x)')

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). What does
% this function do and how would you use it?

%
% Answer: ranova runs a repeated measures analysis of variance test. The
% format for inputs is rmanova(input) where the input contains a table with
% the results of a repeated measures analysis (another statistical test
% that has to first be run to use this function) and the output will
% contain items like the p-value with and wihtout different statistical
% corrections depending on data sphericity/normalcy and the F-statistics.
% This test would be useful in my proposed thesis where we are measuring
% the same variable for different conditions on the same participants (i.e.
% pre and post intervention measurements of tendon stiffness)
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: while and for loops are the two major kinds of loops in MATLAB.
% While loops continue to run for as long as the "while condition" of the
% loop is true/accurate. For example, while x is less than 10, y=x*10, and for
% each iteration you tell the loop to add 1 to x. This loop will run 10 times, assuming x=1
% prior to the start of the while loop. For loops share some similarities
% to while loops. In a for loop, the loop runs a set number of times, and
% during each loop iteration, a specified number is added to the indexed number. It is defaulted at 1, but you can change 
% it to be any specified number. The loops look as such: 
% while x < 10 (or whatever condition you specify)
    % do this
    %end
    % this while loop will continue running iterations as long as x is less than
    % 10

% for x=1:10
    %do this
    % end
    % in this loop, x is 1 for the first iteration, 2 for the next and so
    % forth. The loop will stop when x is > 10. You can change the indexing
    % sequence for x where it adds 2 for each iteration or something like
    % that.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: NaN stands for not a number - this might occur when there are
% blanks or 0s in an imported Excel sheet making it not possible for the desired
% mathematical operations (like dividing or multiplying) to be done on that cell or doing them results in a non number (once the imported excel sheet is
% converted to a workable form - usually a table or matrix).
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A)
S = sum(A,"omitmissing")


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs % yes you can play a game like minesweeper on MATLAB - just use command xpbombs


% 12. Create a variable myAge and assign it the value of your age. Then 
% create a new variable called ageLessTwo and subtract two from the value of the
% myAge variable. Create a third variable called agePlusOne and add one to 
% the value of the myAge variable.

myAge = 23;
ageLessTwo = myAge - 2
agePlusOne = myAge + 1

% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Assign the value to a variable called maxNameLength.

maxNameLength = namelengthmax


% 14. You need to convert some weight values from metric to standard units. 
% Create two appropriately named variables to store the original weight in 
% pounds and the original weight in ounces respectively. Use who and whos 
% to see the variables. Clear one of your variables and then use who and whos again.

originalWeightkg = 100;
% Add your code on the next line
ogWeightPounds = originalWeightkg * 2.2;
ogWeightOunces = originalWeightkg * 35.274
who('ogWeightPounds','ogWeightOunces')
whos('ogWeightPounds','ogWeightOunces')
clear ("ogWeightOunces")
who('ogWeightPounds','ogWeightOunces')
whos('ogWeightPounds','ogWeightOunces')



% 15. Assign a number with a decimal place to an appropriately named variable. Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming). Use whos to check your result. 

decimalNumber = 2.2
whos('decimalNumber')
decimalNumber_int_32 = int32(decimalNumber)
whos('decimalNumber_int_32')


% 16. Create a variable called weightInLBs to store a weight in pounds. Convert this to 
% kilograms using an appropriate calculation or function and assign the result to a variable weightInKgs.


weightInLBs = 120
weightInKGs = weightInLBs / 2.205

% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) using an appropriate 
% calculation and store the result in a variable cTemp.

fTemp = 74
cTemp = (fTemp - 32) * (5/9)


% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA = [2:7]
vecB = [1.1:0.2:1.7]
vecC = [8:-2: 2]


% 20. Give a MATLAB expression that would create a vector 
% (assigned to a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi. 

vec = linspace(0, 2*pi, 50) 


% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
% Assign your answer to a variable called colVec.

rowVec = [-1: 0.5: 1]
colVec = rowVec'


% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called resultMat of all zeros with the 
% dimensions given by the values of rows and cols. The resultMat should
% change each time you execute your code. 

rows = randi(5);
cols = randi(5);
resultMat = zeros(rows, cols)


% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10 assigned to a variable named originalVec. Perform each of 
% the following on the original vector and store your results in appropriately 
% named variables. (you should have a seperate line of code for each)

originalVec = randi([-10 10],1,5)
% - subtract 3 from each element
originalVec_minus3 = originalVec-3

% - count how many are positive
numPositive = 0;
sizeOriginalVec = size(originalVec);
for n=1:sizeOriginalVec(2)
    if originalVec(n) > 0
        numPositive = numPositive + 1;
    end
end
numPositive

% - get the absolute value of each element

absValue_originalVec = abs(originalVec)

% - find the maximum.

maxValue_originalVec =max(originalVec)

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

base1_trap = 10; % the length of the larger base of the trapezoid (units determined by user - remain consistent)
base2_trap = 5; % length of shorter trapezoid base
height_trap = 3;
trapArea = height_trap * ((base1_trap + base2_trap)/2) % equation to determinea area of trapezoid with dimensions defined above (Area_trap = (base1+ base2)/2 * height



% 25. In sports marketing and other areas of sports management, 
% ROI (return on investment) is a key metric when making organizational 
% decisions. The classic equation for ROI is:

% ROI = (Total Revenues – Total Costs) / Total Costs x 100

% Write some code that prompts the user to input total revenues and total 
% costs and then calculates the ROI and stores the value in a variable called
% ROI.

prompt_revenue = "What is the total revenue in USD? "
revenue = input(prompt_revenue);
prompt_costs = "What is the total cost in USD? "
cost = input(prompt_costs)
ROI = (revenue - cost) / (cost * 100)





%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution for 
% part 2, make sure you click the Run Section button vs the Run button) 

%%% Enter the code for your program below this line


%basicTask = "Hello World"
fprintf("Hello World\n")

prompt = "Type what you want the screen to output: ";
user_input = input(prompt, "s");
fprintf(user_input)




%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)