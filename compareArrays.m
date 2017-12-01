function similarity=compareArrays(digitModel, input)
[dist, mapModel, mapInput] = dtw(digitModel.', input.');
newModel = [];
newInput = [];
for i=1:1:length(mapModel)
    newModel(i) = digitModel(mapModel(i));
    newInput(i) = input(mapInput(i));
end
similarity = immse(newModel, newInput) + dist;
end
