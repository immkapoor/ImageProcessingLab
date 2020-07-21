%% Log transformation
clc;
clear all;
Img=imread('Charizard.png');
newIm=2*log(1+double(Img));
subplot(121)
imshow(Img)
title('original image')
subplot(122);
imshow(newIm);
title('Logarithmic transformation');

%% Image negative
figure;
I1=256-Img;
subplot(121)
imshow(Img)
title('original image')
subplot(122);
imshow(I1);
title('image negative');

%% Gamma Transformation
I2=Img.^2;
I3=Img.^3;
I4=Img.^4;
I5=Img.^5;
figure;
subplot(221);
imshow(I2);
title('Gamma=2');
subplot(222);
imshow(I3);
title('Gamma=4');
subplot(223);
imshow(I4);
title('Gamma=10');
subplot(224);
imshow(I5);
title('Gamma=20');

figure;
subplot(221)
imhist(I2);
title('Gamma=2');
subplot(222);
imhist(I3);
title('Gamma=3');
subplot(223);
imhist(I4);
title('Gamma=4');
subplot(224);
imhist(I5);
title('Gamma=5');

%% Nth root
Img1=double(Img)
I2=nthroot(Img1,3); %cube root
figure;
subplot(121)
imshow(Img)
title('Original Image');
subplot(122)
imshow(I2);
title('cuberoot of Image');
%% contrast strecting
I=imresize(Img,[256,256]);
for i=1:256
    for j=1:256
       if I(i,j)<=128;
       In(i,j)=0;  
       else 
       In(i,j)=256; 
       end
       end
end
figure;
subplot(121)
imshow(Img)
title('Original Image');
subplot(122)
imshow(In);
title('contrast strecting of image');