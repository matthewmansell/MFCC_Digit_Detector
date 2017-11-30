function similarity=compareArrays(digitModel, input)
%similarity = numel(find(array1~=array2));
%comb = [diff(array1); diff(array2)];
%similarity = pdist(comb);
%similarity = immse(diff(array1),diff(array2));
%similarity = dtw(cell2mat(wordModel(5)).', input.');
%similarity = 0;
[dist, mapModel, mapInput] = dtw(digitModel.', input.');
newModel = [];
newInput = [];
length(mapModel)
length(mapInput)
for i=1:1:length(mapModel)
    newModel(i) = digitModel(mapModel(i));
    newInput(i) = input(mapInput(i));
end
similarity = immse(newModel, newInput) ;
end
