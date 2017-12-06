%Author: Matthew Mansell (mcm36)
%Generate models for all training data
mfccDigit0 = extract_mfccs('digit0.wav');
mfccDigit1 = extract_mfccs('digit1.wav');
mfccDigit2 = extract_mfccs('digit2.wav');
mfccDigit3 = extract_mfccs('digit3.wav');
mfccDigit4 = extract_mfccs('digit4.wav');
mfccDigit5 = extract_mfccs('digit5.wav');
mfccDigit6 = extract_mfccs('digit6.wav');
mfccDigit7 = extract_mfccs('digit7.wav');
mfccDigit8 = extract_mfccs('digit8.wav');
mfccDigit9 = extract_mfccs('digit9.wav');

digit0Mean = meanMfcc(mfccDigit0);
digit1Mean = meanMfcc(mfccDigit1);
digit2Mean = meanMfcc(mfccDigit2);
digit3Mean = meanMfcc(mfccDigit3);
digit4Mean = meanMfcc(mfccDigit4);
digit5Mean = meanMfcc(mfccDigit5);
digit6Mean = meanMfcc(mfccDigit6);
digit7Mean = meanMfcc(mfccDigit7);
digit8Mean = meanMfcc(mfccDigit8);
digit9Mean = meanMfcc(mfccDigit9);

%Display mfcc data
subplot(2,5,1)
imagesc(flipud(digit0Mean'))
title('digit 0 mean')
subplot(2,5,2)
imagesc(flipud(digit1Mean'))
title('digit 1 mean')
subplot(2,5,3)
imagesc(flipud(digit2Mean'))
title('digit 2 mean')
subplot(2,5,4)
imagesc(flipud(digit3Mean'))
title('digit 3 mean')
subplot(2,5,5)
imagesc(flipud(digit4Mean'))
title('digit 4 mean')
subplot(2,5,6)
imagesc(flipud(digit5Mean'))
title('digit 5 mean')
subplot(2,5,7)
imagesc(flipud(digit6Mean'))
title('digit 6 mean')
subplot(2,5,8)
imagesc(flipud(digit7Mean'))
title('digit 7 mean')
subplot(2,5,9)
imagesc(flipud(digit8Mean'))
title('digit 8 mean')
subplot(2,5,10)
imagesc(flipud(digit9Mean'))
title('digit 9 mean')