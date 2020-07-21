clc;
clear all;
Img=imread('pikachu.tif');
%% To enhance an image
Inew=Img+60;
figure;
imshow(Inew)

%% Quantizing an image
% The image is ceiled to upper value.
figure;
subplot(2,1,1);
imshow(Img);
title('Original Image')
I=imresize(Img,[256,256]);
quantized=I;
for i=1:256
    for j=1:256
       if I(i,j)<=64;
       quantized(i,j)=64;  
       elseif I(i,j)<=128;
       quantized(i,j)=128; 
       elseif I(i,j)<=192;
       quantized(i,j)=192; 
       else I(i,j)<=256;
       quantized(i,j)=256; 
       end
       end
end
subplot(2,1,2)
imshow(quantized)
title('Quantized Imagep')
%% Segmentation
newImg= imresize(Img, [256 256]);
i1=newImg(1:128,1:256);
i2=newImg(129:256,1:128);
i3=newImg(129:192,129:256);
i4=newImg(193:256,129:256);
figure;
subplot(3,2,1)
imshow(newImg)
title('Original image')
subplot(3,2,2)
imshow(i1)
title('First part')
subplot(3,2,3)
imshow(i2)
title('Second part')
subplot(3,2,4)
imshow(i3)
title('Third part')
subplot(3,2,5)
imshow(i4)
title('Fourth part')
%concattining
i5=[i3;i4];
i6=[i2,i5];
i7=[i1;i6];
subplot(3,2,6)
imshow(i7)
title('Concatinated image')