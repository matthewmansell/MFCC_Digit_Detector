%Generate models for all training data
mfccModel0 = extract_mfccs('digit0.wav');
mfccModel1 = extract_mfccs('digit1.wav');
mfccModel2 = extract_mfccs('digit2.wav');
mfccModel3 = extract_mfccs('digit3.wav');
mfccModel4 = extract_mfccs('digit4.wav');
mfccModel5 = extract_mfccs('digit5.wav');
mfccModel6 = extract_mfccs('digit6.wav');
mfccModel7 = extract_mfccs('digit7.wav');
mfccModel8 = extract_mfccs('digit8.wav');
mfccModel9 = extract_mfccs('digit9.wav');

mfccModel0Avg = constructModel(mfccModel0);
mfccModel1Avg = constructModel(mfccModel1);
mfccModel2Avg = constructModel(mfccModel2);
mfccModel3Avg = constructModel(mfccModel3);
mfccModel4Avg = constructModel(mfccModel4);
mfccModel5Avg = constructModel(mfccModel5);
mfccModel6Avg = constructModel(mfccModel6);
mfccModel7Avg = constructModel(mfccModel7);
mfccModel8Avg = constructModel(mfccModel8);
mfccModel9Avg = constructModel(mfccModel9);


%surf(cell2mat(mfccModel0(5)))
