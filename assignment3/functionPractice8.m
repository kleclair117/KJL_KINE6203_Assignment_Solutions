function functionPractice8 (a,b)
% This function takes 2 whole numbers and counts from the smallest number to the
% larger number in increments of 1. This is done by using and 'if-else'
% statement where the first condition is set to determine which number is
% greater. If 'a' is greater than 'b', the colon creates a vector from 'a'
% to 'b'. Otherwise, if 'b' is greater than 'a', the colon does the same
% and creates a vector from 'b' to 'a'. In both parts of the loop, the
% display operator 'disp' is used to display the result.
if a>b
    i = a:b;
    disp(i)
else
    i = b:a;
    disp(i)
end

