function [dayAtoDayB]=dayComparator(SubjectID, DayA, DayB)
% This function compares selected days on an individual basis 
% If the value for DayA is greater than DayB it should return SubjectID
% If there was no increase a 0 is reported
% The last line before ending the function removes them
% Inputs: SubjectID, DayA, DayB
% Outputs: dayAtoDayB
% Examples: 
% [day1toDay2] = dayComparator(SubjectID, Day1, Day2);
% [day2toDay3] = dayComparator(SubjectID, Day2, Day3);
 dayAtoDayB= zeros(size(SubjectID));
for i= 1:size(DayB)
    if DayB(i) > DayA(i)
        dayAtoDayB(i,1)= SubjectID(i);
    end
end
dayAtoDayB(all(dayAtoDayB== 0,2),:)= []; % Removes zeros
end
