function similarity=compareArrays(array1, array2)
%similarity = numel(find(array1~=array2));
comb = [array1; array2];
similarity = pdist(comb);
end