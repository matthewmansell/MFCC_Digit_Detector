function digitMean = meanMfcc(digitCells)
    %find largest model
    largest = 1;
    for i=1:1:length(digitCells)
        if(length(cell2mat(digitCells(i))) > length(cell2mat(digitCells(largest))))
            largest = i;
        end
    end
    %map each word to the largest word size
    for i=1:1:length(digitCells)
        mfcc = cell2mat(digitCells(i));
        digitCells{i} = imresize(mfcc, [length(cell2mat(digitCells(largest))) 12], 'nearest');
    end
    digitMean = zeros(length(cell2mat(digitCells(largest))), 12);
    for i=1:1:length(digitCells)
        digitMean = digitMean + cell2mat(digitCells(i));
    end
    digitMean = digitMean / length(digitCells);    %average words
end

