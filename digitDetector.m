input = extract_mfccs('ExamplePIN.wav');
%kernel = ones(20,1);
%EnarrFiltered = filter(kernel,1,Enarr);
%input = splitMFCC(MFCCarr, EnarrFiltered, 0.05);

pin = '';
%compare against model
for i=1:1:length(input)
    digit = cell2mat(input(i));
    %digit = cell2mat(mfccModel3(5));
    %digit = mean(cell2mat(mfccModel8(i)));
    
    
    best = 1000;
    fit = 0;
    for model=0:1:9
        modelStr = sprintf('%s%d', 'mfccModel', model);
        digitComp = compareArrays(eval(modelStr), digit);
        if digitComp < best
            best = digitComp;
            fit = model;
        end
    end
    pin = sprintf('%s%d%s', pin, fit, ', ');
end

