function [rtnMatrix] = mfcc3pointmodel(mfccCellArr)
%Generates a 3 point model (X,Y&Z) for each MFCC martix,
%supplied in the given cell array.
%Return a matrix, each row being a different sample.
rtnMatrix = zeros(3, length(mfccCellArr)); %The matrix to return
for i=1:1:length(mfccCellArr)
    mfcc = cell2mat(mfccCellArr(i));
    band = mean(mfcc);
    x = band(2);
    y = band(3);
    z = band(5);
    rtnMatrix(:,i) = [x y z];
end


end

