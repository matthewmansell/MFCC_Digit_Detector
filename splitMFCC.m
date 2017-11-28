%Author: Matthew Mansell
function [MFCCcollection]=splitMFCC(MFCCarr, Enarr, threshold)
MFCCcollection = {2,2,2}; %Return array
indx = 1;
word = 0;
while indx < length(Enarr)
    %loop until word detected
    if(Enarr(indx) > threshold)
        word = word + 1;
        wordLength = 1;
        %find the length of the word
        while(Enarr(indx + wordLength) > threshold && (indx+wordLength) < length(Enarr))
            wordLength = wordLength + 1;
        end
        MFCCcollection{word} = MFCCarr(indx:(indx+wordLength),1:12);
        indx = indx + wordLength;
    end
    indx = indx + 1;
end

