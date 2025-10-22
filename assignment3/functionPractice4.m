function [output1] = functionPractice4(quarters,dimes,nickels,pennies)
% This function takes the 4 inputs of each coin and multiplies
% the input count by the value of the coin. The total value of the coins is
% then stored in the output variable. 
quarters = (quarters * 0.25);
dimes = (dimes * 0.10);
nickels = (nickels * 0.05);
pennies = (pennies * 0.01);
output1 = (quarters + dimes + nickels + pennies);