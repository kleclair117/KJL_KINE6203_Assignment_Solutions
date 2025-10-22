function [first,last,number] = functionPractice9(string)
% This function takes a string input such as 'Halloween' and determines the
% first letter ('string(1)'), the last letter ('string(end)'), and the
% string length with the operator 'strlength'. Once these are found, they
% are displayed using the 'disp' operator. 
first = string(1);
last = string(end);
number = strlength(string);
disp(first)
disp(last)
disp(number)
end

