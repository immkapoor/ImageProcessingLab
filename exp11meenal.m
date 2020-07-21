clc;
clear all;
close all;

%% Binary Bit Planes

aa=imread('sdd.jpg');
a=rgb2gray(aa);
subplot 331
imshow(a);
title('Original Image');

b1=bitget(a,1);
subplot 332
imshow(logical(b1));


b2=bitget(a,2);
subplot 333
imshow(logical(b2));

b3=bitget(a,3);
subplot 334
imshow(logical(b3));

b4=bitget(a,4);
subplot 335
imshow(logical(b4));

b5=bitget(a,5);
subplot 336
imshow(logical(b5));

b6=bitget(a,6);
subplot 337
imshow(logical(b6));

b7=bitget(a,7);
subplot 338
imshow(logical(b7));

b8=bitget(a,8);
subplot 339
imshow(logical(b8));

%% Gray Bit Planes
figure;

subplot 331
imshow(a);
title('Original Image');

d1=b1;
subplot 332
imshow(logical(d1));

d2=xor(b1,b2);
subplot 333
imshow(logical(d2));

d3=xor(b3,b2);
subplot 334
imshow(logical(d3));

d4=xor(b3,b4);
subplot 335
imshow(logical(d4));

d5=xor(b4,b5);
subplot 336
imshow(logical(d5));

d6=xor(b5,b6);
subplot 337
imshow(logical(d6));

d7=xor(b6,b7);
subplot 338
imshow(logical(d7));

d8=xor(b8,b7);
subplot 339
imshow(d8);


%% Reconstruction

rec=b1+b2*2+b3*4+b4*8+b5*16+b6*32+b7*64+b8*128;
figure();
subplot 211
imshow(a);
title('Original Image');
subplot 212
imshow(rec);
title('Reconstructed Image')


