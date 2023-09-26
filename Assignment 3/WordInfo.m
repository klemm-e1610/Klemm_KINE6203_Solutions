function [numLetters, firstLetter, lastLetter] = WordInfo(word)
%In this function, a user inputs a string or character vector and the
%number of letters in the input, as well as the first and second letter are
%stored as three separate outputs

word=convertStringsToChars(word); % if the user input a string, it must be converted to a character array

numLetters=length(word); % first output is the number of letters in the input string
firstLetter=word(1); % second output is the first letter in the input
lastLetter=word(numLetters); % third output is the last letter in the input
end