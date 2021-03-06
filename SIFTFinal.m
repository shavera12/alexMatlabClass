%% SIFT 
% Alex Shaver
% SMILe Analysis Routine for Time-Frequency Analyses
% Based on Tim Mullen's SIFT program and JC Mizelle
% Part of EEGLAB
% Current as of 12/2017
%% Start of file

% Initialize EEGLAB to be used without the GUI
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab('nogui');

%% Identify the location of the data and the location where processed
% Data will be saved here and creates this folder if it does not exist

dataFolder = 'Z:\Data\Alex Tool Use\Young\Output\ICA_DIPFIT_TF';
outFolder = 'Z:\Data\Alex Tool Use\Young\Output\Sifted_Young';

if ~exist('outFolder','dir')==1
    mkdir(char(outFolder)) 
end

%% Load .set files that have already been preprocessed
% Pre-processing should have included (at least) artifact reduction and 
% ICA computation. This is done through the SMILe
% preprocessing routine which is on the Z drive.

% Start initializing study-specific parameters related to conditions
% file names
% A wrapper to use for condition-specific file names
conds = {'EEG_2', 'EEG_4', 'EEG_8', 'EEG_16', 'EEG_32', 'EEG_64'};

% A wrapper to use for condition numbers if needed
condnumbers = [2,4,8,16,32,64];

% A wrapper to use for subject-specific file names
subjs= {'Y_S001' 'Y_S002' 'Y_S004' 'Y_S005' 'Y_S006' 'Y_S007' 'Y_S008' 'Y_S009' 'Y_S010' 'Y_S011' ...
        'Y_S012' 'Y_S014' 'Y_S015' 'Y_S016' 'Y_S017' 'Y_S019' 'Y_S020' 'Y_S022' 'Y_S023' 'Y_S024'};


% Start outer loop across participants
for i = 1:size(subjs,2)
    
% Start inner loop across conditions
% Load file for subject / condition
for ii = 1:size(conds,2);
    
EEG = pop_loadset('filename',strcat(subjs(i),'-',conds{ii},'.set'),'filepath','Z:\Data\Alex Tool Use\Young\Output\ICA_DIPFIT_TF\');
eeglab redraw
EEG = eeg_checkset( EEG );

%% Identify baseline to be removed (if any)
startBase = -3;
endBase = -2.5;

EEG = pop_rmbase(EEG, [startBase endBase]);

%% Initialize settings for SIFT functions
% SIFT can work on both channels and components
% This routine does both

% Identify the channels for evaluation (all channels for now)
userChan({})

Components          = [];                           % These are the components/channels to which we'll fit our multivariate model
WindowLengthSec     = 1.0;                          % Sliding window length in seconds
WindowStepSizeSec   = 0.1;                          % Sliding window step size in seconds
NewSamplingRate     = [];                           % New sampling rate (if downsampling)
EpochTimeRange      = [-1.5 2.5];                   % This is the time range (in seconds) to analyze (relative to event at t=0)
NewSamplingRate     = [];                           % Set to some value if you ewould like to resample
TaperType           = 'chebwin';                    % Set the type of windowing/taper function to apply, options include the following:
                                                    % 'rectwin'
                                                    % 'hamming'
                                                    % 'hann'
                                                    % 'bartlett'
                                                    % 'blackman'
                                                    % 'blackmanharris'
                                                    % 'bohmanwin'
                                                    % 'chebwin'
                                                    % 'flattopwin'
                                                    % 'gausswin'
                                                    % 'kaiser'
                                                    % 'nuttallwin'
                                                    % 'parzenwin'
                                                    % 'taylorwin'
                                                    % 'tukeywin'
                                                    % 'triang'
GUI_MODE            = 'nogui';                      % Whether or not to show the Graphical User Interfaces. Can be 'nogui' or anything else (to show the gui)
VERBOSITY_LEVEL     = 2;                            % Verbosity Level (0=no/minimal output, 2=graphical output)


%% Initialize settings for SIFT functions
% SIFT can work on both channels and components

% Progress bar
progressBar(1)

% Select time range, if set
if ~isempty(NewSamplingRate)
EEG = pop_select(EEG, EpochTimeRange);
end

% Select components, if set (the end flag specificies that the selected
% components are to be left in the data)
if ~isempty(Components)
EEG = pop_subcomp( EEG, Components, 0, 1);
end

% Resample data, if set
if ~isempty(NewSamplingRate)
EEG = pop_resample( EEG, NewSamplingRate);

end

% Convert list of components to cell array of strings
if ~isempty(Components)
ComponentNames = strtrim(cellstr(num2str(Components')));

end

%% Retain a copy of the dataset
originalEEG=EEG;

%% Apply arguments to the channel data
 
[EEG prepcfg] = pop_pre_prepData(EEG,GUI_MODE, ...
    'VerbosityLevel',VERBOSITY_LEVEL,   ...
    'SignalType',{'Channels'},  ...     
    'VariableNames',Chans,   ...
    'Detrend',  ...
        {'verb' VERBOSITY_LEVEL ...
        'method' {'linear'} ...
        'piecewise' ...
            {'seglength' 0.33   ...
             'stepsize' 0.0825} ...
        'plot' false},  ...
    'NormalizeData',    ...
        {'verb' 0       ...
         'method' {'time' 'ensemble'}},   ...
    'resetConfigs',true,    ...
    'badsegments',[],       ...
    'newtrials',[],         ...
    'equalizetrials',false);

%% EEG.CAT should now contain the following fields:   
%     EEG.CAT
%     Conn: []
%                 MODEL: []
%               configs: [1x1 struct]
%     curComponentNames: {1x62 cell}
%              curComps: [1x62 double]
%                nbchan: 62
%                  pnts: 6000
%            signalType: 'Channels'
%               srcdata: [62x6000x30 double]
%                 times: [1x6000 double]
%                trials: 30

%% Given the pre-processed data, estimate an optimal model order

[EEG] = pop_est_selModelOrder(EEG,GUI_MODE, ...
        'modelingApproach',         ...
            {'Segmentation VAR'     ...
                'algorithm' {'Vieira-Morf'} ...
                'winStartIdx' []    ...
                'winlen'  WindowLengthSec    ...
                'winstep' WindowStepSizeSec  ...
                'taperfcn' TaperType    ...
                'epochTimeLims' []      ...
                'prctWinToSample' 100   ...
                'normalize' []          ...
                'detrend' {'method' 'constant'} ...
                'verb' VERBOSITY_LEVEL},      ...
        'morderRange',[1 30] ,  ...
        'downdate',true,        ...
        'runPll',[],            ...
        'icselector',{'sbc' 'aic' 'fpe' 'hq'},  ...
        'winStartIdx',[],       ...
        'epochTimeLims',[],     ...
        'prctWinToSample',100,   ...
        'plot', [], ...
        'verb',VERBOSITY_LEVEL);

%% Automatically select the optimal model order
% Minimize information criteria based on:
% 'aic' = Akaike Information Criteria
% 'sbc' = Swartz-Bayes Criterion
% 'fpe' = Log of Akaike's Final Prediction Error
% 'hq'  = Hannan-Quinn Criteria
%
% Replace the IC.XXX.popt field in the line below to specify the
% desired information criteria
% ceil rounds components up towards infinity 
ModelOrder = ceil(mean(EEG(1).CAT.IC.hq.popt));

%% Check the parameters of the estimated model, if desired

est_dispMVARParamCheck(EEG,struct...
    ('morder',ModelOrder',...
    'winlen',WindowLengthSec,...
    'winstep',WindowStepSizeSec,...
    'verb',VERBOSITY_LEVEL));

%% Fit the model based on the optimization procedure called above

[EEG modfitcfg] = pop_est_fitMVAR(EEG,GUI_MODE, ...
            EEG.CAT.configs.est_selModelOrder.modelingApproach, ...
            'ModelOrder',ModelOrder);

%%
% EEG.CAT.MODEL now contains the model structure with
% coefficients (in MODEL.AR), prediction errors (MODEL.PE) and other
% information.
%
% Alternately, we can fit the VAR parameters using a Kalman filter 
% (see doc est_fitMVARKalman for more info on arguments)
%
% IMPORTANT NOTE - THIS WILL CAUSE A SYSTEM CRASH - DO NOT USE
% EEG.CAT.MODEL = est_fitMVARKalman(EEG,0,...
%     'updatecoeff',0.0005,...
%     'updatemode',2,...
%     'morder',ModelOrder,...
%     'verb',VERBOSITY_LEVEL,...
%     'downsampleFactor',50);
%% Validate the fitted model with respect to the data
% Statistics include residual whiteness, percent consistency and
% model stability

[EEG] = pop_est_validateMVAR(EEG,GUI_MODE,...
    'checkWhiteness', ...
        {'alpha' 0.05 ...
         'statcorrection' 'none' ...
         'numAcfLags' 50         ...
         'whitenessCriteria' {'Ljung-Box' 'ACF' 'Box-Pierce' 'Li-McLeod'} ...
         'winStartIdx' [] ...
         'prctWinToSample' 100  ...
         'verb' 0}, ...
     'checkResidualVariance',...
        {'alpha' 0.05 ...
         'statcorrection' 'none' ...
         'numAcfLags' 50    ...
         'whitenessCriteria' {}  ...
         'winStartIdx' []        ...
         'prctWinToSample' 100   ...
         'verb' 0}, ...
     'checkConsistency',    ...
        {'winStartIdx' []   ...
         'prctWinToSample' 100 ...
         'Nr' []                ...
         'donorm' 0         ...
         'nlags' []         ...
         'verb' 0}, ...
     'checkStability',  ...
        {'winStartIdx' []   ...
         'prctWinToSample' 100 ...
         'verb' 0},     ...
     'prctWinToSample',100,  ...
     'winStartIdx',[],      ...
     'verb',VERBOSITY_LEVEL,...
     'plot',false);

%% Calculate connectivity measures. 
% All of the following are supported - more to be added (possibly).
% DIRECTED TRANSFER FUNCTION MEASURES:
%     Directed Tranfer Function (DTF)
%     Normalized DTF (nDTF)
%     Direct DTF (dDTF)
%     Direct DTF (with full causal normalization) (dDTF08)
%     Full-frequency DTF (ffDTF)
%
% PARTIAL DIRECTED COHERENCE MEASURES
%     Partial Directed Coherence (PDC)
%     Normalized PDC (nPDC)
%     Generalized Partial Directed Coherence (GPDC)
%     Partial Directed Coherence Factor (PDCF)
%     Renormalized Partial Directed Coherence (RPDC)
%
% GRANGER-GEWEKE CAUSALITY MEASURES
%     Granger-Geweke Causality (GGC)
%
% SPECTRAL COHERENCE MEASURES
%     Complex Coherence (Coh)
%     Imaginary Coherence (iCoh)
%     Partial Coherence (pCoh)
%     Multiple Coherence (mCoh)
%
% SPECTRAL DENSITY MEASURES
%    Complex Spectral Density (S)
%
% Output (EEG) contains all results in EEG.CAT.Conn as a structure
% with [num_chans x num_chans x num_freqs x num_time] as a 
% connectivity matrix

[EEG conncfg] = pop_est_mvarConnectivity(EEG,GUI_MODE, ...
        'connmethods',...
            {'DTF' 'nDTF' 'dDTF' 'dDTF08' 'ffDTF'...
            'PDC' 'nPDC' 'GPDC' 'PDCF' 'RPDC'...
            'GGC'...
            'Coh' 'iCoh' 'pCoh' 'mCoh'...
            'S'}, ...
        'absvalsq',true,           ...
        'spectraldecibels',true,   ...
        'freqs',[1:40] ,        ...
        'verb',VERBOSITY_LEVEL);

    
 eeglab redraw 

%% STEP 9: Visualize the Connectivity estimates in a Time-Frequency Grid

% This example plots a Time-Frequency Grid using "simple" percentile
% statistics (this doesn't use the stats returned by stat_surrogateStats).
% For a single condition, we call pop_vis_TimeFreqGrid(EEG(cnd),...) If we
% want to compare two conditions we can either use the dataset returned by
% pop_stat_surrogateStat() with the 'Hab' statistics mode OR we can compare
% set1-set2 by calling pop_vis_TimeFreqGrid(EEG([set1 set2]), ... ) where
% set1,set2 are the indices of the datasets we want to compare.


EEG(end) = pop_vis_TimeFreqGrid(EEG(end),GUI_MODE, ...
                        'plotCondDiff',false,   ...
                        'vismode','TimeXFrequency', ...
                        'MatrixLayout', ...
                            {'Partial' ...
                             'triu' 'dDTF08' 'ut_clim' 100 ...
                             'tril' 'dDTF08' 'lt_clim' 100 ...
                             'diag' 'S' 'd_clim' 100   ...
                             'clim' 99.7},  ...
                         'clim',100,        ...
                         'timeRange',[],    ...
                         'freqValues',[1:40],   ...
                         'windows',[],      ...
                         'pcontour',[],     ...
                         'thresholding',    ...
                            {'Simple'       ...
                            'prcthresh' [97.5 3]  ...
                            'absthresh' []},    ...
                        'baseline',[-1 -0.25] , ...
                        'fighandles',[],        ...
                        'smooth',false,         ...
                        'xord',[],'yord',[],    ...
                        'plotorder',[],         ...
                        'topoplot','dipole',    ...
                        'topoplot_opts',{},     ...
                        'customTopoMatrix',[],  ...
                        'dipplot',  ...
                            {'mri' '' 'coordformat' 'mni' 'dipplotopt' {}}, ...
                        'nodelabels',Chans,        ...
                        'foilines',[3 7 15],    ...
                        'foilinecolor',[0.7 0.7 0.7] ,  ...
                        'events',{{0 'r' ':' 2}},       ...
                        'freqscale','linear',           ...
                        'transform','linear',           ...
                        'yTickLoc','right',             ...
                        'titleString','',               ...
                        'titleFontSize',12,             ...
                        'axesFontSize',11,              ...
                        'textColor',[1 1 1] ,           ...
                        'linecolor',[1 1 1] ,           ...
                        'patchcolor',[1 1 1] ,          ...
                        'colormap',jet(64),             ...
                        'backgroundColor',[0 0 0]);

%% Write data out to the folder identified at the top of this file


pop_saveset( EEG, 'filename',strcat(subjs{i},'-',conds{ii},'.set'),'filepath',char(outFolder));

end

end