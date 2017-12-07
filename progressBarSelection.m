function [ output_args ] = progressBarSelection( input_args)
%This function determines the type of progress bar you want to use
% Input:
% 1= Preprocessing progress bar
% 2= For data that has been pre-processed and is going into the next step
% 3= Estimate an optimal model order
% 4= Fitting the model based on the optimization
% 5= Validating the fitted model
% 6= Calculating conectivity measures
% 7= Visualizing the connectivity estimates in a Time-Frequency Grid
% 8= Creating 3D brain movie
% Output:
% One of the progress bars or an error message 
if input_args== 1
h = waitbar(0,'Pre-processing... Please wait...');
steps = 1000;
        for step = 1:steps
         % Computations take place here
        waitbar(step / steps)
        end
        close(h) % Closes waitbar
    elseif input_args== 2
    h = waitbar(0,'Processing... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar
    elseif input_args== 3
    h = waitbar(0,'Estimating optimal model order... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar          
    elseif input_args== 4
    h = waitbar(0,'Fitting the model based on the optimization... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar
    elseif input_args== 5
    h = waitbar(0,'Validating the fitted model... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar
     elseif input_args== 6
    h = waitbar(0,'Calculating conectivity measures... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar   
    elseif input_args== 7
    h = waitbar(0,'Visualizing the connectivity estimates in a Time-Frequency Grid... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar 
    elseif input_args== 8
    h = waitbar(0,'Creating 3D brain movie... Please wait...');
    steps = 1000;
            for step = 1:steps
             % Computations take place here
             waitbar(step / steps)
            end
            close(h) % Closes waitbar 
    elseif input_args ~= 1||2||3||4||5||6||7||8   
        error('That is not a valid input')
end

