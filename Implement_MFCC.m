[s,fs]=audioread('digit0.wav');
Ws=1024;
O1=512;
L=floor((length(s)-O1/O1));
N=12;

ccs=zeros(N,L);
for n=1:L
    seg=s(1+(n-1)*O1:Ws+(n-1)*O1);
    ccs(:,n)=mfcc_model(seg.*hamming(1,Ws),40,N,fs);
end

waterfall([1:L]*length(s)/(L*fs),{1:N},ccs)
xlabel('Time, s')
ylabel('Amplitude')
ylabel('Band')
zlabel('Amplitude')