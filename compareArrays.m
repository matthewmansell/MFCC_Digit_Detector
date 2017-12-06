%Author: Matthew Mansell (mcm36)
function similarity=compareArrays(digitModel, input)
inputResized = imresize(input, [length(digitModel) 12], 'nearest');
similarity = immse(digitModel, inputResized);
end
