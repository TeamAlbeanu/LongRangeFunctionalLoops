clear;clc;
% close all;
dataPath = 'D:\Dropbox\MATLAB\ChaeBanerjeeAnalysis\NatureSubmission\Data\TwentyOdorSet\';

load([dataPath 'MC_APC_PreMuscimol.mat'])
temp=firingRates(:,:,:,1:3);


bins = 0:0.2:4; %Time bins: odor period is 4 s
Fs = 10; % sampling rate in Hz

CUMCUBEPre = []; % stores the odor responses from beginning of odor period to each time point in "bins"; dimensions: timebins X cells X odorrants X repeats
for k = 1:length(bins)-1
    start = Fs*(10 + bins(1));
    stop = Fs*(10+bins(k+1));
    CUMCUBEPre(k,:,:,:) = squeeze(nanmean(temp(:,:,start:stop,:),3));
end


%%
KernelType = 'Poly';
doPlot = 0;
nBoot = 10;
nOdors = 20;
ANSWER_Pre = zeros(nOdors,size(CUMCUBEPre,1),nBoot);
ANSWER_Mus = zeros(nOdors,size(CUMCUBEPre,1),nBoot);

for odorNum = 2:nOdors
    for boot = 1:nBoot
        odorSeq = randperm(20,odorNum);
        Results = SVM_OdorIdentifierLargeOdor_20220606(CUMCUBEPre(:,:,odorSeq,:),KernelType,doPlot);                
        ANSWER_Pre(odorNum-1,:,boot) = mean([Results.TruePos],2);  
    end
    odorNum
end
%% PLOTTING codes

figure(101);
subplot(2,1,2);hold on;
imagesc(squeeze(mean(ANSWER_Pre,3)),[0 1]);colormap('jet')
for j = 1:size(ANSWER_Pre,1)    
    figure(101);
    subplot(2,1,2);hold on;
    temp = squeeze(mean(ANSWER_Pre,3));
    idx = find(temp(j,:)>0.5);
    if ~isempty(idx)
        plot(idx(1),j,'ko')
        TP50(j,1) = idx(1);
    end
    axis([0 21 0.5 19.5])
    axis('square')
end
