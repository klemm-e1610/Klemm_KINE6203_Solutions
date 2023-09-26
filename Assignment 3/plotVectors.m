function plotVectors(vec1,vec2)
%This function takes two vectors as inputs and outputs a figure with both of
%the vectors plotted on it. 
figure() %create a new figure
plot(vec1) %plot input 1 (vector 1)
hold on % keep vector 1 on the plot
plot(vec2) % add vector 2 (input 2) to the plot
hold on % keep everything on the plot
title('Generic Plot') % add a title
xlabel('Independent variable') % add an x-axis label
ylabel('Dependent variable') % add a y-axis label
legend('vec1','vec2') % add a legend so you can decipher from vector 1 and vector 2
end