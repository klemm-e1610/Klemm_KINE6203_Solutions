function [sum, difference, product, maximum] = mathFunctions(num1, num2)
% This function takes two numbers as inputs (num1 and num2) and then has four outputs for
% the sum, difference, product, and maximum of the two input numbers
sum= num1 + num2; % first output is sum - it is input1 + input2
difference = num1-num2; % second output is difference - it is the answer when input2 is subtracted from input 1
product= num1 * num2; % third output is the product of num1 and num2
maximum = max(num1, num2); % fourth and final output is the maximum value of the two inputs
end