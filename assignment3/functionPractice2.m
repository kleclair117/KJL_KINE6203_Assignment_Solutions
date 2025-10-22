function [output1,output2,output3,output4] = functionPractice2(input1,input2)
% This function adds, multiplies, subtracts the largest from the smallest,
% and determines the max of 2 inputs while storing each problem in 4
% separate outputs. 
output1 = (input1 + input2);
output2 = (input1 .* input2);
output3 = (max(input1,input2)) - (min(input1,input2));
output4 = max(input1,input2);
