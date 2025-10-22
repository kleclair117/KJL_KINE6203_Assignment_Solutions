function [validity] = functionPractice5(a)
% The goal of this function is to determine the validity of a triangle (two
% smaller sides are greater than the largest side). 
% This function requires a 3 element array for the input, and the
% conditional statement organizes this array by utlizing the 'max, 'min',
% and 'median' operators to determine the lengths of the given sides. The
% longest side is first determined by the 'max' operator and set to be
% greater than the second smallest (median) and smallest sides (min).
% Lastly, the sum of the median and min set to not equal zero and if all of
% this is true, then it is a valid triangle. 
a(1)
a(2)
a(3)
if max(a) > (median(a) + min(a) ~= 0)
    validity = true;
else
    validity = false;
end