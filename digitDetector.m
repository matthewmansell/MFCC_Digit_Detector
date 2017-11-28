%input = extract_mfccs('ExamplePIN.wav');
%kernel = ones(20,1);
%EnarrFiltered = filter(kernel,1,Enarr);
%input = splitMFCC(MFCCarr, EnarrFiltered, 0.05);

%pin = '';
%compare against model
for i=1:1:length(input)
    digit = mean(cell2mat(input(i)));
    %digit = mfccModel5Avg;
    %digit = mean(cell2mat(mfccModel8(i)));
    
    
    best = 100;
    fit = 0;
    for model=0:1:9
        modelStr = sprintf('%s%d%s', 'mfccModel', model, 'Avg');
        digitComp = compareArrays(eval(modelStr), digit);
        if digitComp < best
            best = digitComp;
            fit = model;
        end
    end
    
    pin = sprintf('%s%d%s', pin, fit, ', ');
    
    %d0comp = compareArrays(mfccModel0Avg, digit);
    %d1comp = compareArrays(mfccModel1Avg, digit);
    %d2comp = compareArrays(mfccModel2Avg, digit);
    %d3comp = compareArrays(mfccModel3Avg, digit);
    %d4comp = compareArrays(mfccModel4Avg, digit);
    %d5comp = compareArrays(mfccModel5Avg, digit);
    %d6comp = compareArrays(mfccModel6Avg, digit);
    %d7comp = compareArrays(mfccModel7Avg, digit);
    %d8comp = compareArrays(mfccModel8Avg, digit);
    %d9comp = compareArrays(mfccModel9Avg, digit);
end

