function [textOut] = wooHah(num1,num2)
%This function takes two numeric inputs (doubles) and outputs "Woo" if the sum of the two
%inputs is even and "Hah" if their sum is odd
if rem((num1+num2),2) == 0 % determine the remainder when dividing the sum of the two inputs by 2 
    textOut = 'Woo'; % if no remainder, sum is even and output is "Woo"
else
    textOut = 'Hah'; % otherwise, sum is odd and output is "Hah"
end
end