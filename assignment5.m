%% Assignment 5
% Alex Shaver
% Due Date: October 20th, 2017
% This script calculates individual and group means for three days of
% training, compares the days specified, normalizes the
% weights, and exports the finished product as a .csv
% I did not want to do this assignemt because this is 2017 and gender is
% fluid so it should have just been one group. However, being able to use
% "i" for the individuals changed my mind. 
%% Import function 
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3]= importfile('isok_data_6803.csv'); 
% Hopefully, The file was imported
Gender= char(Gender); 
% This must be used to identify Gender as a characters
%% COMPUTE ALL THE MEANS
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]= genderIsoCalc (Gender, Day1, Day2, Day3);
% This (hopefullyyyyyy) calls the genderIsoCalc function to compute the
% overall and individual means 
%% LOOK FOR PROGRESS 
[day1toDay2] = dayComparator(SubjectID, Day1, Day2);
% This should call the dayComparer function to compare days 1 and 2
[day2toDay3] = dayComparator(SubjectID, Day2, Day3);
% This should call the dayComparer function to compare days 2 and 3
%% I think this normalizes everything correctly but I'm not sure
normDay1= (Day1/Weight); % These three divide the Day value by the Weight value
normDay2= (Day2/Weight);
normDay3= (Day3/Weight);
normDay1mean= mean(normDay1); % These take the mean of the three variable above
normDay2mean= mean(normDay2);
normDay3mean= mean(normDay3);
%% EXPORT ALL THE RESULTS and turn zeros to heros 
% The for loops replace zeros with variable values 
A = zeros(13, 9);
for ii = 1:length(maleIsoIndMeans)
A(ii,1) = maleIsoIndMeans(ii);
end
for ii = 1:length(femaleIsoIndMeans)
A(ii,2) = femaleIsoIndMeans(ii);
end
for ii = 1:length(maleGroupIsoMean)
A(ii,3) = maleGroupIsoMean(ii);
end
for ii = 1:length(femaleGroupIsoMean)
A(ii,4) = femaleGroupIsoMean(ii);
end
for ii = 1:length(day1toDay2)
A(ii,5) = day1toDay2(ii);
end
for ii = 1:length(day2toDay3)
A(ii,6) = day2toDay3(ii);
end
for ii = 1:length(normDay1mean)
A(ii,7) = normDay1mean(ii);	
end	
for ii = 1:length(normDay2mean)
A(ii,8) = normDay2mean(ii);
end
for ii = 1:length(normDay3mean)
A(ii,9) = normDay3mean(ii);
end
% Creates headers 
% Makes cells 
% Two step file creation	
header = {'maleIsoIndMeans' 'femaleIsoIndMeans' 'maleGroupIsoMean' 'femaleGroupIsoMean' ...	
'day1toDay2' 'day2toDay3' 'normDay1mean' 'normDay2mean' 'normDay3mean'};	
commaHeader = [header;repmat({','},1,numel(header))]; % Insert commas into header	
commaHeader = commaHeader(:)';
textHeader = cell2mat(commaHeader); % Header in text with commas	
% Writes header into file from first step	
fid = fopen('iso_results.csv','w'); 
fprintf(fid, '%s\n',textHeader);
fclose(fid);
% Appends data into results file
dlmwrite('iso_results.csv', A, '-append');
		