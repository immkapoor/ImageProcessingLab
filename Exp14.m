clc;
clear all;
I=imread('Charizard.png'); %reading image
subplot(131)
imshow(I);
title('Original image');
%%
In=double(I);
Id=gradient(In);
subplot(132);
imshow(Id);
title('Gradient');
%%
L=[0 1 0 ; 1 -4 1; 0 1 0];
Il=conv2(I,L);
subplot(133);
imshow(Il);
title('Laplacian');
%%
figure;
I=im2double(imread('Charizard.png')); %reading image
subplot(121)
imshow(I);
title('Original image');
h1=fspecial('laplacian',0.5);
f=imfilter(I,h1);
subplot(122);
imshow(f);
title('Sharpeining using Laplacian Kernel');