function similarity=compareArrays(array1, array2)
%similarity = numel(find(array1~=array2));
comb = [diff(array1); diff(array2)];
similarity = pdist(comb);

%similarity = sum(array1.*array2) / (norm(array1) * norm(array2));

end