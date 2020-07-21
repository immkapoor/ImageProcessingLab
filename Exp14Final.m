clc;
clear all;
I2=imread('Charizard.png'); %reading image
I1=imresize(I2,[256 256]);
subplot(131);
imshow(I1njknskj
title('original image')
L=[1 1 1; 1 -8 1; 1 1 1];
f=uint8(filter2(L,I2));
subplot(132);
imshow(f)
title('Edges of image')
r=imsubtract(I2,f);
subplot(133)
imshow(r)
title('Sharpened image')


%% using inbuilt commands
figure;
subplot(131)
imshow(I1);
title('Original image');
h1=fspecial('laplacian',0.5);
f1=imfilter(I1,h1);
subplot(132);
imshow(f1);
title('After applying Laplacian Kernel');
r1=imsubtract(I1,f1);
subplot(133)
imshow(r1);
title('Sharpened image')
