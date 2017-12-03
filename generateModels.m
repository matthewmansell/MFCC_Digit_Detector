%Generate models for all training data
digit0mfccs = extract_mfccs('digit0.wav');
digit1mfccs = extract_mfccs('digit1.wav');
digit2mfccs = extract_mfccs('digit2.wav');
digit3mfccs = extract_mfccs('digit3.wav');
digit4mfccs = extract_mfccs('digit4.wav');
digit5mfccs = extract_mfccs('digit5.wav');
digit6mfccs = extract_mfccs('digit6.wav');
digit7mfccs = extract_mfccs('digit7.wav');
digit8mfccs = extract_mfccs('digit8.wav');
digit9mfccs = extract_mfccs('digit9.wav');

digit0avgs = avgMfccs(digit0mfccs).';
digit1avgs = avgMfccs(digit1mfccs).';
digit2avgs = avgMfccs(digit2mfccs).';
digit3avgs = avgMfccs(digit3mfccs).';
digit4avgs = avgMfccs(digit4mfccs).';
digit5avgs = avgMfccs(digit5mfccs).';
digit6avgs = avgMfccs(digit6mfccs).';
digit7avgs = avgMfccs(digit7mfccs).';
digit8avgs = avgMfccs(digit8mfccs).';
digit9avgs = avgMfccs(digit9mfccs).';


%scatX = [digit0avgs(1,:) digit1avgs(1,:) digit2avgs(1,:)];
%scatY = [digit0avgs(2,:) digit1avgs(2,:) digit2avgs(2,:)];
%scatZ = [digit0avgs(3,:) digit1avgs(3,:) digit2avgs(3,:)];

hold on;
scatter3(digit0avgs(1,:), digit0avgs(2,:), digit0avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [1 0 0]);
scatter3(digit1avgs(1,:), digit1avgs(2,:), digit1avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0 1 0]);
scatter3(digit2avgs(1,:), digit2avgs(2,:), digit2avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0 0 1]);
scatter3(digit3avgs(1,:), digit3avgs(2,:), digit3avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [1 1 0]);
scatter3(digit4avgs(1,:), digit4avgs(2,:), digit4avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0 1 1]);
scatter3(digit5avgs(1,:), digit5avgs(2,:), digit5avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [1 0 1]);
scatter3(digit6avgs(1,:), digit6avgs(2,:), digit6avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0.5 0 0]);
scatter3(digit7avgs(1,:), digit7avgs(2,:), digit7avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0 0.5 0]);
scatter3(digit8avgs(1,:), digit8avgs(2,:), digit8avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0 0 0.5]);
scatter3(digit9avgs(1,:), digit9avgs(2,:), digit9avgs(3,:), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0.5 0.5 0]);
hold off;

%digit0Mean = meanMfcc(mfccDigit0);
%digit1Mean = meanMfcc(mfccDigit1);
%digit2Mean = meanMfcc(mfccDigit2);
%digit3Mean = meanMfcc(mfccDigit3);
%digit4Mean = meanMfcc(mfccDigit4);
%digit5Mean = meanMfcc(mfccDigit5);
%digit6Mean = meanMfcc(mfccDigit6);
%digit7Mean = meanMfcc(mfccDigit7);
%digit8Mean = meanMfcc(mfccDigit8);
%digit9Mean = meanMfcc(mfccDigit9);

%surf(cell2mat(mfccModel0(5)))
