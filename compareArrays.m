function similarity=compareArrays(wordModel, input)
%similarity = numel(find(array1~=array2));
%comb = [diff(array1); diff(array2)];
%similarity = pdist(comb);
%similarity = immse(diff(array1),diff(array2));
similarity = dtw(cell2mat(wordModel(5)).', input.');
%for i=1:1:length(wordModel)
    %model = cell2mat(wordModel(i)).';
    %inputModel = input.';
    %[dist, mapModel, mapInput] = dtw(model, inputModel);
    %newModel = [];
    %newInput = [];
    %for i2=1:1:length(mapModel)
    %    newModel(i2) = model(mapModel(i2));
    %    newInput(i2) = inputModel(mapInput(i2));
    %end
    %similarity = similarity + dtw(cell2mat(wordModel(i)).', input.');
    %similarity = similarity + immse(newModel, newInput);
%end
similarity = similarity / length(wordModel);

%similarity = sum(array1.*array2) / (norm(array1) * norm(array2));

end