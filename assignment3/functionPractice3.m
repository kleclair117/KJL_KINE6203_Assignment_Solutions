function functionPractice3(input1,input2)
% This function sums two inputs and is placed in the 'mod' operator to return the
% remainder after division. After the sum is calculated the remainder is
% equated to 0 and, when true, returns 'Woo' and when false returns 'Hah'.
% There is no need to store these in an output because the directions do not
% call for it. 
if mod((input1 + input2),2) == 0
    fprintf('Woo')
else
    fprintf('Hah')
end