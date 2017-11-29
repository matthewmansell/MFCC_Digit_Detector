input = extract_mfccs('TestData(counting).wav');
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
        mfccModel = eval(sprintf('%s%d%s', 'digit', model, 'Mean'));
        similarity = dtw(mfccModel.', digit.');
        if similarity < best
            best = similarity;
            fit = model;
        end
    end
    pin = sprintf('%s%d%s', pin, fit, ', ');
end

