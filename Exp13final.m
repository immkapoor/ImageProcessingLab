clc;
clear all;
I2=imread('Charizard.png'); %reading image
I1=imresize(I2,[256 256]);
% I2=rgb2gray(I1);
subplot(121);
imshow(I1)
title('Original image');
K=[1 4 7 4 1; 4 16 26 16 4; 7 26 41 26 7; 4 16 26 16 4; 1 4 7 4 1];
R=(1/273)*K;
f=uint8(filter2(R,I2));
subplot(122);
imshow(f);
title('Smoothened image using gaussian kernel')

%% Box Kernel
figure
subplot(121);
imshow(I1);
title('Original image');
K2=ones(7,7);
R2=(1/49)*K2;
f1=uint8(filter2(R2,I2));
subplot(122);
imshow(f1);
title('Smoothened image using Box kernel');
%% Using inbuilt commands
figure;
subplot(121)
imshow(I1);
title('Original image');
h1=fspecial('gaussian',[5 5],1.5);
f=imfilter(I1,h1);
subplot(122);
imshow(f);
title('Smoothening using Gaussian Kernel(using inbuilt command)');

%%
M=imgaussfilt(I1,2);
figure;
subplot(121)
imshow(I1);
title('Original image');
subplot(122);
imshow(M);
title('Smoothening using Gaussian Kernel(using inbuilt command)');