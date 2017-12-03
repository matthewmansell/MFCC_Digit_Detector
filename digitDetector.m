%Author: Matthew Mansell
%Tests an input audio file/MFCC data againts the model,
%outputting the closest match.

%Get input word MFCCs
input = extract_mfccs('ExamplePIN.wav'); %Use this for audio input
%input = splitMFCC(MFCCarr, Enarr, 0.075); %Use this for MFCCarr & Enarr input


inputavgs = mfcc3pointmodel(input).'; %Average the mfcc data for the inputs
pin = ''; %Store for the pin
%Compare against model
for i=1:1:length(inputavgs.')
    inputDigit = inputavgs(i,:);
    closest = 0;
    closestValue = 100;
    for model=0:1:9
        digitModel = eval(sprintf('%s%d%s', 'digit', model, 'avgs')).';
        digitModel = mean(digitModel); %Mean of the models/samples
        %Calculate the euclidean distance
        distance = sqrt((inputDigit(1) - digitModel(1))^2 + (inputDigit(2) - digitModel(2))^2 + (inputDigit(3) - digitModel(3))^2);
        if distance < closestValue %Is it closer than the current best?
            closestValue = distance;
            closest = model;
        end
    end
    pin = sprintf('%s%d%s', pin, closest, ', '); %Concat the pin
end

