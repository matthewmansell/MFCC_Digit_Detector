%Author: Matthew Mansell
%Tests an input audio file/MFCC data againts the model,
%outputting the closest match.

%Get input word MFCCs
input = extract_mfccs('ExamplePIN.wav'); %Use this for audio input
%input = splitMFCC(MFCCarr, Enarr, 0.075); %Use this for MFCCarr & Enarr input


inputavgs = avgMfccs(input); %
pin = ''; %Store for the pin
%compare against model
for i=1:1:length(inputavgs.')
    inputDigit = inputavgs(i,:);
    %closest = [100 100 100];
    closest = 0;
    closestValue = 100;
    for model=0:1:9
        digitModel = eval(sprintf('%s%d%s', 'digit', model, 'avgs')).';
        digitModel = mean(digitModel);
        
        distance = sqrt((inputDigit(1) - digitModel(1))^2 + (inputDigit(2) - digitModel(2))^2 + (inputDigit(3) - digitModel(3))^2);
        
        if distance < closestValue
            closestValue = distance;
            closest = model;
        end
        
        %for sample=1:1:length(digitModel)
        %    distance = sqrt((digitMean(1) - digitModel(sample, 1))^2 + (digitMean(2) - digitModel(sample, 2))^2 + (digitMean(3) - digitModel(sample, 3))^2);
        %    for test=1:1:length(closest)
        %        if(distance < closest(1,test))
        %            closest(1,test) = distance;
        %            closest(2,test) = model;
        %            break;
        %        end
        %    end
            %if similarity < closest
            %best = similarity;
            %fit = model;
            %end
        %end
        
        
        
        %if similarity < best
        %    best = similarity;
        %    fit = model;
        %end
    end
    %fit = mode(closest(2,:));
    
    %digit = cell2mat(mfccModel3(5));
    %digit = mean(cell2mat(mfccModel8(i)));
    %best = 1000;
    %fit = 0;
    %for model=0:1:9
    %    mfccModel = eval(sprintf('%s%d%s', 'digit', model, 'Mean'));
    %    similarity = dtw(mfccModel.', digit.');
    %    %similarity = compareArrays(mfccModel, digit);
    %    if similarity < best
    %        best = similarity;
    %        fit = model;
    %    end
    %end
    pin = sprintf('%s%d%s', pin, closest, ', ');
end

