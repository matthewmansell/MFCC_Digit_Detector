function [Model]=constructModel(model)
model = (12);
for i=1:1:length(model)
    word = cell2mat(model(1));
    wordAvg = (12);
    for i2=1:1:length(word)
        total = 0;
        count = 0;
        for i3=1:1:length(word)
            total = total + word(i3);
            count = count + 1;
        end
        wordAvg(i2) = total/count;
    end
    model = word;
end

