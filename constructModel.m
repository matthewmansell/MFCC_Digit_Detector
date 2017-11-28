function [model]=constructModel(words)
wordAvgs = zeros(length(words), 12);
for i=1:1:length(words)
    word = cell2mat(words(i));
    wordAvgs(i,:) = mean(word);
end
model = mean(wordAvgs);
end
