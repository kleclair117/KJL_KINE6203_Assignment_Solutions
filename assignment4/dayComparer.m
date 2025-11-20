function [day1toDay2,day2toDay3] = dayComparer(SubjectID,Day1,Day2,Day3)
% This function compares data from the previous days where Days and
% SubjectID are inputs. The function returns only the subjects who had an
% increase in the selected days. 

increase1 = find(Day2 > Day1); % find function finds the instances when Day2 ...
% is greater than Day1, indicating an increase
increase2 = find(Day3 > Day2); % find function finds the instances when Day3 ...
% is greater than Day1, indicating an increase
day1toDay2 = SubjectID(increase1); % SubjectID's are pulled when increases exist
day2toDay3 = SubjectID(increase2); % SubjectID's are pulled when increases exist
day1toDay2 = padarray(day1toDay2, [13 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length
day2toDay3 = padarray(day2toDay3, [14 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length

end
