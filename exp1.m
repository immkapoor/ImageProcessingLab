%Clearing workspace and command window
clear all; clc;
%% To read an image
x = imread('pikachu1.jpg');
imshow(x);

%% Changing type of image
g = rgb2gray(x);
figure;
subplot(121)
imshow(g);
title('Gray image')
b = im2bw(x,0.8);
subplot(122)
imshow(b);
title('Black and white image')
%% Cropping the image
c = imcrop(x,[50 70 100 100]);
figure;
subplot(121)
imshow(x);
title('Original Image');
subplot(122)
imshow(c);
title('Cropped Image');
%% Resizing the image
r = imresize(g, 0.4);
figure;
subplot(121)
imshow(g);
title('Original Image');
subplot(122)
imshow(r);
title('Resized Image');
imsave; %To save the image