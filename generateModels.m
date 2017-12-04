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

%Generate the averaged word data
digit0avgs = mfcc3pointmodel(digit0mfccs);
digit1avgs = mfcc3pointmodel(digit1mfccs);
digit2avgs = mfcc3pointmodel(digit2mfccs);
digit3avgs = mfcc3pointmodel(digit3mfccs);
digit4avgs = mfcc3pointmodel(digit4mfccs);
digit5avgs = mfcc3pointmodel(digit5mfccs);
digit6avgs = mfcc3pointmodel(digit6mfccs);
digit7avgs = mfcc3pointmodel(digit7mfccs);
digit8avgs = mfcc3pointmodel(digit8mfccs);
digit9avgs = mfcc3pointmodel(digit9mfccs);

%Display the 3 point classification scatter
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
