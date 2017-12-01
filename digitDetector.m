%Author: Matthew Mansell
%Tests an input audio file/MFCC data againts the model,
%outputting the closest match.

input = extract_mfccs('ExamplePIN.wav'); %Use this for audio input
%input = splitMFCC(MFCCarr, Enarr, 0.06); %Use this for MFCCarr & Enarr input

pin = '';
%compare against model
for i=1:1:length(input)
    digit = cell2mat(input(i));
    %digit = cell2mat(mfccModel3(5));
    %digit = mean(cell2mat(mfccModel8(i)));
    best = 1000;
    fit = 0;
    for model=0:1:9
        mfccModel = eval(sprintf('%s%d%s', 'digit', model, 'Mean'));
        %similarity = dtw(mfccModel.', digit.');
        similarity = compareArrays(mfccModel, digit);
        if similarity < best
            best = similarity;
            fit = model;
        end
    end
    pin = sprintf('%s%d%s', pin, fit, ', ');
end

