clc;
clear all;
I2=imread('1234.jpg'); %reading image
% I=imresize(Il,[256 256]);
% I2=rgb2gray(I);
% subplot(131);
% imshow(I);
% title('Original image');
% xLayer=floor((size(I2)-1)/2);
% B_x = padarray(I2,xLayer,'circular');  
%% defining gaussian Kernal
K=[.3679   .6065    .3679;
    .6065     1      .06065;
    .3679   .6065    .3679];
R=(0.2042).*K;
% In=conv2(R,B_x);
% I_correct= In(xLayer+2:end-(xLayer+1), xLayer+2:end-(xLayer+1));
% M=imgaussfilt(I,2);
% I2=imfilter(I,R,'replicate');
f=uint8(filter2(R,I2));
r=imsubtract(I2,f);
subplot(132);
imshow(r)
% imshow(I2);
title('Smoothening using Gaussian Kernel');
%% Box Kernel
K2=ones(7,7);
R2=(1/49)*K2;
% I3=cconv(I,R2);
C_x = conv2(R2,B_x);   
C_correct = C_x(xLayer+2:end-(xLayer+1), xLayer+2:end-(xLayer+1));
subplot(133);
imshow(C_correct);
title('Using Box Kernel')

%%
K=[1 4 7 4 1; 4 16 26 16 4; 7 26 41 26 7; 4 16 26 16 4; 1 4 7 4 1];
R=(1/273)*K;
Iz=conv2(I,R);
subplot(132);
% imshow(I2);
title('Smoothening using Gaussian Kernel');

%%
% clc;
% clear all;
I=im2double(imread('Charizard.png')); %reading image
figure;
subplot(121)
imshow(I);
title('Original image');
h1=fspecial('gaussian',[5 5],1.5);
f=imfilter(I,h1);
subplot(122);
imshow(f);
title('Smoothening using Gaussian Kernel');

