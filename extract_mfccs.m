function mfccModel = extract_mfccs(file)
%Author: Ian McLoughlin
%MFCC extractor
[speech,fs]=audioread(file);

%check if it is stereo or not by looking for the minimum dimension of the
%matrix called 'speech'. If it is, convert to mono
if( min(size(speech)) ~= 1)
    speech=0.5* (speech(:,1)+speech(:,2) );
end

%resample to 8Khz sample rate (it's much quicker to process)
speech=resample(speech,8000,fs);
fs=8000;

%work out how many samples in 10ms
frame10ms=fs*0.01;
%make sure this is an integer not a fraction
frame10ms=round(frame10ms);
%we will have an analysis frame that's 20ms, with a 10ms overlap
frame20ms=2*frame10ms;
%Number of samples in the file
Ns=length(speech);
%Define MFCC parameters
M=12;
N=26;
%Create an empty array to hold the MFCC values
MFCCarr=[];
%And an empty array to hold the energy values
Enarr=[];

%scan through the array
for indx=1:frame10ms:Ns-frame20ms
    %select the right bit of speech
    seg=speech(indx:indx+frame20ms-1);
    %window this
    seg=seg.*hamming(frame20ms);
    %get MFCCs (using function from the book)
    mfccs=mfcc_model(seg,26,12,fs);
    %stack these into an array
    MFCCarr=[MFCCarr;mfccs];
    Enarr=[Enarr;sum(seg.*seg)];
end

mfccModel = splitMFCC(MFCCarr, Enarr, 0.05); %Split the mfcc data into words (edit: mcm36)

end