function digitMean = meanMfcc(digitCells)
    %find largest model
    largest = 1;
    for i=1:1:length(digitCells)
        m1 = cell2mat(digitCells(i));
        m2 = cell2mat(digitCells(largest));
        if(length(m1) > length(m2))
            largest = i;
        end
    end
    %map each word to the largest word size
    for i=1:1:length(digitCells)
        mfcc = cell2mat(digitCells(i));
        digitCells{i} = imresize(mfcc, [length(cell2mat(digitCells(largest))) 12]);
        
        
        %[dist, mapX, mapY] = dtw(cell2mat(digitCells(largest)).', cell2mat(digitCells(i)).');
        %apply map to the 'smaller' matrix
        %mfcc = cell2mat(digitCells(i));
        %newMfcc = [];
        %for i2=1:1:length(cell2mat(digitCells(largest)))
        %    newMfcc(i2,:) = mfcc(mapY(i2),:);
        %end
        %digitCells{i} = newMfcc;
    end
    digitMean = zeros(length(cell2mat(digitCells(largest))), 12);
    for i=1:1:length(digitCells)
        digitMean = digitMean + cell2mat(digitCells(i));
    end
    digitMean = digitMean / length(digitCells);    %average words
end

