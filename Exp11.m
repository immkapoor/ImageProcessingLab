%% To find the bit planes and apply binary and gray coding.
clc;
clear all;
Img=imread('pikachu.tif');
b1 = double(bitget(Img,1));
b2 = double(bitget(Img,2));
b3 = double(bitget(Img,3));
b4 = double(bitget(Img,4));
b5 = double(bitget(Img,5));
b6 = double(bitget(Img,6));
b7 = double(bitget(Img,7));
b8 = double(bitget(Img,8));
% Img_b = cat(8,b1,b2,b3,b4,b5,b6,b7,b8);
p1 = b1(:,:,1);
p2 = b2(:,:,2)*2;
p3 = b3(:,:,3)*4;
p4 = b4(:,:,4)*8;
p5 = b5(:,:,5)*16;
p6 = b6(:,:,6)*32;
p7 = b7(:,:,7)*64;
p8 = b8(:,:,8)*128;
p=p1+p2+p3+p4+p5+p6+p7+p8;
figure,
imshow(Img);
title('Original:');
figure; 
subplot(4,2,1);
imshow(b1);
title('Bit Plane: 1');
subplot(4,2,2)
imshow(b2);
title('Bit Plane: 2');
subplot(4,2,3)
imshow(b3);
title('Bit Plane: 3');
subplot(4,2,4)
imshow(b4);
title('Bit Plane: 4');
subplot(4,2,5);
imshow(b5);
title('Bit Plane: 5');
subplot(4,2,6)
imshow(b6);
title('Bit Plane: 6');
subplot(4,2,7)
imshow(b7);
title('Bit Plane: 7');
subplot(4,2,8)
imshow(b8);
title('Bit Plane: 8');
% y = Img_b;
figure;
imshow(p)
%% Binary coding