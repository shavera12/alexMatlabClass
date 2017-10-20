function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]= genderIsoCalc (Gender, Day1, Day2, Day3)
% Computes the total mean for both genders,the means for M/F individuals across days, and then the group means for each
% day 
% Inputs: Gender, Day1, Day2, Day3
% Output: maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,
%         femaleGroupIsoMean 
% Example:
% [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]= genderIsoCalc (Gender, Day1, Day2, Day3);

i=1:size(Day1);
threeDayTotal(i)= ((Day1(i)+Day2(i)+Day3(i))/3); % Computes total mean for all three days
for i= 1:length(Day1)
    if Gender(i)== 'M' % If Gender is M this takes that value from the three day total to get individual's values
    maleIsoIndMeans(i,:)= mean(threeDayTotal(i));
    else
        femaleIsoIndMeans(i,:)= mean(threeDayTotal(i)); % Takes the mean of what is left for F individulas 
    end 
end
maleIsoIndMeans(all(maleIsoIndMeans==0,2),:)=[]; % Removes zeros
femaleIsoIndMeans(all(femaleIsoIndMeans==0,2),:)=[]; % Removes zeros

maleGroupIsoMean= mean(maleIsoIndMeans); % Takes the mean of the M individuals to get the group value 
femaleGroupIsoMean= mean(femaleIsoIndMeans); % Takes the mean of the F individuals to get the group value 
end
