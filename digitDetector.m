%Author: Matthew Mansell
%Tests an input audio file/MFCC data against the each model,
%outputting the closest match.

input = extract_mfccs('ExamplePIN.wav'); %!Use this for audio input!
%input = splitMFCC(MFCCarr, Enarr, 0.075); %!Use this for MFCCarr & Enarr input!

pin = ''; %PIN string holder
%compare against model
for i=1:1:length(input)
    digit = cell2mat(input(i));
    best = 1000; %Current best fitness
    fit = 0; %Holder of current best model fit
    for model=0:1:9
        mfccModel = eval(sprintf('%s%d%s', 'digit', model, 'Mean'));
        %difference = dtw(mfccModel.', digit.'); %!Use this for dynamic time warping compare!
        difference = compareArrays(mfccModel, digit); %!Use this for mean squared error compare!
        if difference < best %closer than current best?
            best = difference;
            fit = model;
        end
    end
    pin = sprintf('%s%d%s', pin, fit, ', '); %Concat to PIN
end

