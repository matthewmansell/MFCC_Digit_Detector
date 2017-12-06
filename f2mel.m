%Author: Ian McLoughlin
%Source: Speech and Audio Processing: A MATLAB-based Approach (pg106)
function [mel]=f2mel(hz)
mel=2595 * log10(1+hz/700);
