%Author: Ian McLoughlin
%Source: Speech and Audio Processing: A MATLAB-based Approach (pg106)
function [hz]=mel2f(mel)
hz=700*(10.^(mel/2595)-1);