SNR_dB=-30:0.4:10 ;
SNR_linear=10.^(SNR_dB/10.);
N_iter=500000; 
sq2=sqrt(0.5); 
nT=2; 
nR=2; % 2x2 
n=min(nT,nR);
I = eye(n);
for j=1:length(SNR_dB)
for iter=1:N_iter 
    H = sq2*(randn(nR,nT)+j*randn(nR,nT));
    C(iter) = log2(real(det(I+SNR_linear(j)/nT*H'*H))); 
end
[PDF,Rate] = hist(C,100); 
PDF= PDF/N_iter;
for i=1:100 
    CDF(i) = sum(PDF([1:i]));
end
end
SNR=SNR_dB(1:length(CDF));
plot(SNR,CDF,'r'); 
xlabel('SNR');
ylabel('CDF');
hold on;
title('For Pe=0 2x2 config');