function countAtoB(a,b)
%This function takes 2 numeric inputs and counts up by one from the smaller
%number to the larger number. There is no output, just a display.
if a <b % if the first input is smaller than the second input
    disp(a) % show the first input
    while a < b % as long as the first input is smaller than the second input
        a=a+1; % the first input is itself, plus one
        disp(a) % show the updated first input
    end
else % if the second input is smaller than the first input, repeat the same loop but counting from input two to input 1
    disp(b)
    while b < a
        b=b+1;
        disp(b)
    end
end
end