IM=imread('Charizard1.png');  % Read in a image
whos
image(IM);                     % Display image
FF = fft(IM);                   % Take FFT
whos
IFF = ifft(FF);                 % take IFFT
whos
FINAL_IM = uint8(real(IFF));      % Take real part and convert back to UINT8
whos
figure
imshow(FINAL_IM)     