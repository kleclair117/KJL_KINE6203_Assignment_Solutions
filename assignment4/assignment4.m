% This script runs the functions "importfile", "dayComparer", and
% "genderIsoCalc" to analyze isometric strength data.

% importfile is called to import the data from the "isok_data_6803_1.csv"
% file with data from SubjectID, Age, Gender, Weight, Day1, Day2, and Day3
% being pulled.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803_1.csv", [2, Inf]);

% genderIsoCalc is called to determine individual and group means
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

% dayComparer is called to compares data from one day to the next to
% determine increases. 
[day1toDay2,day2toDay3] = dayComparer(SubjectID,Day1,Day2,Day3);

normDay1mean = mean(Weight ./ Day1); % weight normailzed data for Day1 using (weight./weight lifted).
normDay2mean = mean(Weight ./ Day2); % weight normailzed data for Day2 using (weight./weight lifted).
normDay3mean = mean(Weight ./ Day3); % weight normailzed data for Day3 using (weight./weight lifted).

femaleGroupIsoMean = padarray(femaleGroupIsoMean, [24 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length
maleGroupIsoMean = padarray(maleGroupIsoMean, [24 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length
normDay1mean = padarray(normDay1mean, [24 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length
normDay2mean = padarray(normDay2mean, [24 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length
normDay3mean = padarray(normDay3mean, [24 0], 0, 'post'); % padarray adds zeros to calculations to normalize column length

% Table is created to check results including all variables created in the
% functions dayComparer and genderIsoCalc as well as the weight normalized
% data calculations.
T = table(SubjectID, Age, Gender, Weight, ...
   maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, ...
   femaleGroupIsoMean, day1toDay2, day2toDay3, ...
   normDay1mean, normDay2mean, normDay3mean);

disp(T) % displays table
writetable(T,'iso_results.csv') % writes a table for export