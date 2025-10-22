function functionPractice7 (x,y)
% This function plots the 'x' and 'y' coordinates after checking for equal
% length of the given inputs. After checking for equality, the y-label is
% labeled 'vertical', the x-label is labeled 'horizontal', and the title is
% 'Practice Plot'.
if (length(x)) ~= length(y)
    error('Unequal Length')
end
plot(x,y);
ylabel('vertical');
xlabel('horizontal');
title('Practice Plot');
