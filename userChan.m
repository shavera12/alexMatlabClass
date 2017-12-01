function [] = userChan( userChans )
% This function allows the user to pick the channels to be evaluated
% Right now we are using SIFT on all of the channles. I can input the
% regions of interest (ROI) when we narrow those down.

if userChans == {}
    Chans= {};
    z = 1:size(EEG.chanlocs,2);
    Chans{z} = EEG.chanlocs(z).labels;

elseif userChans == 1:10
    size= userChans;
    z = 1:size(EEG.chanlocs,2);
    Chans{z} = EEG.chanlocs(z).labels;
end 