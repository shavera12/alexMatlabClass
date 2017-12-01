function [] = progressBar(answer)
% This function displays a progress bar if the user decices they want one
% Type 1 for preprocessing data or 2 for processing data progress bar. All other answers will mean no
% progress bar.

if answer ~= 1:2
   progressBar= 0;
elseif answer== 1
    fprintf('##################################################################################################################\n\n');
    fprintf('Pre-processing the data.\n\n');
    fprintf('##################################################################################################################\n\n');
elseif answer== 2
    fprintf('##################################################################################################################\n\n');
    fprintf('Processing the data.\n\n');
    fprintf('##################################################################################################################\n\n');
end


