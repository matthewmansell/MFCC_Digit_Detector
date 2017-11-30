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

%surf(cell2mat(mfccModel0(5)))
