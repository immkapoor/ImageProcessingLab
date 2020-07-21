clc;
clear all;
Img=imread('Charizard.png');
imshow(Img)
title('Original image')
%% Plotting histogram
figure;
imhist(Img)
xlabel('gray scale vaues');
ylabel('no of pixels');
title('histogram of original image');
%% Histogram equalization
figure;
[B T]=histeq(Img);
imhist(B)
xlabel('gray scale vaues');
ylabel('no of pixels');
title('equalized histogram of original image');
figure;
imshow(B)
title('equalized image')
