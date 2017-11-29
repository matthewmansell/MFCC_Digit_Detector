%Generate models for all training data
mfccModel0 = extract_mfccs('digit0.wav');
mfccModel1 = extract_mfccs('digit1.wav');
mfccModel2 = extract_mfccs('digit2.wav');
mfccModel3 = extract_mfccs('digit3.wav');
mfccModel4 = extract_mfccs('digit4.wav');
mfccModel5 = extract_mfccs('digit5.wav');
mfccModel6 = extract_mfccs('digit6.wav');
mfccModel7 = extract_mfccs('digit7.wav');
mfccModel8 = extract_mfccs('digit8.wav');
mfccModel9 = extract_mfccs('digit9.wav');

%create average model
for modelNo=0:1:9
    model = sprintf('%s%d', 'mfccModel', modelNo);
    %find largest model
    largest = 0;
    for i=0:1:length(model)
        if(length(cell2mat(model(i))) > length(cell2mat(model(largest))))
            largest = i;
        end
    end
    
    %map each word to the largest word size
    for i=0:1:length(model)
        [dist, mapX, mapY] = dtw(cell2mat(model(largest)).', cell2mat(model(i)).');
        %apply map to the 'smaller' matrix
        model = cell2mat(model(i));
        newModel = [];
        for i2=1:1:length(mapModel)
            newModel(i2) = model(mapY(i2));
        end
        model(i) = newModel;
    end
    
    %average words
    
end





%mfccModel0Avg = constructModel(mfccModel0);
%mfccModel1Avg = constructModel(mfccModel1);
%mfccModel2Avg = constructModel(mfccModel2);
%mfccModel3Avg = constructModel(mfccModel3);
%mfccModel4Avg = constructModel(mfccModel4);
%mfccModel5Avg = constructModel(mfccModel5);
%mfccModel6Avg = constructModel(mfccModel6);
%mfccModel7Avg = constructModel(mfccModel7);
%mfccModel8Avg = constructModel(mfccModel8);
%mfccModel9Avg = constructModel(mfccModel9);


%surf(cell2mat(mfccModel0(5)))
