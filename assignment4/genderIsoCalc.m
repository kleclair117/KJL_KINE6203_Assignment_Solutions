function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% This function pulls data from "isok_data_6803_1.csv" and uses the days
% to calculate indivdual and group means in both genders. The inputs are
% days and gender and the output are the calculated means.

data = [Day1, Day2, Day3]; % locates the column vector used in following calculations

maleData = data(Gender == 'M', :); % pulls data only from the male subjects 
maleIsoIndMeans = mean(maleData, 2); % averages individual across rows (Day 1, Day2, Day3)
maleGroupIsoMean = mean(maleIsoIndMeans); % averages the individual means to get the group mean
maleIsoIndMeans = padarray(maleIsoIndMeans, [12 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length

femaleData = data(Gender == 'F', :); % pulls data only from the female subjects
femaleIsoIndMeans = mean(femaleData, 2); % averages individual across rows (Day 1, Day2, Day3)
femaleGroupIsoMean = mean(femaleIsoIndMeans); % averages the individual means to get the group mean
femaleIsoIndMeans = padarray(femaleIsoIndMeans, [13 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length


fprintf('maleIsoIndMeans\n') % prints 'maleIsoIndMeans' above displayed results
disp(maleIsoIndMeans) % displays results
fprintf('femaleIsoIndMeans\n'); % prints 'femaleIsoIndMeans' above displayed results
disp(femaleIsoIndMeans); % displays results
fprintf('femaleGroupIsoMean\n') % prints 'femaleGroupIsoMean' above displayed results
disp(maleGroupIsoMean); % displays results
fprintf('femaleGroupIsoMean\n'); % prints 'femaleGroupIsoMean' above displayed results
disp(femaleGroupIsoMean); % displays results

end