function [avgsCellArr] = avgMfccs(mfccCellArr)
%AVGMFCCS Summary of this function goes here
%   Detailed explanation goes here
avgsCellArr = zeros(length(mfccCellArr),3);
for i=1:1:length(mfccCellArr)
    mfcc = cell2mat(mfccCellArr(i));
    band = mean(mfcc);
    x = band(2);
    y = band(3);
    z = band(5);
    avgsCellArr(i,:) = [x y z];
end


end

