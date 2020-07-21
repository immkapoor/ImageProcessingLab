clc;
clear all;
Img=imread('Charizard.png');
%% Increase contrast and brightness of Image
subplot(1,3,1)
imshow(Img);
title('original picture')
I1=2*Img;
subplot(1,3,2);
imshow(I1)
title('increased contrast')
I2=2*Img+50;
subplot(1,3,3);
imshow(I2)
title('increased contrast and brightness');
