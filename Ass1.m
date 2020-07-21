clc;
clear all;
rgb_im = imread('1234.jpg');
[r,c,t] = size(rgb_im);
%% Making blue channel 0. As MATLAB loads image in rgb format,Third channel is blue
for ii = 1:r
    for jj=1:c
        for kk=1:3
            if kk==3
                mod_im(ii,jj,kk)=0;
            else
                mod_im(ii,jj,kk)=rgb_im(ii,jj,kk);
            end
        end
    end
end
%% Converting to gray scale
gray_im=rgb2gray(rgb_im);
mod_gray=rgb2gray(mod_im);
% Plotting images
figure;
subplot(221)
imshow(rgb_im)
title('Original image');
subplot(222)
imshow(mod_im)
title('Blue channel zero');
subplot(223)
imshow(gray_im)
title('gray image');
subplot(224)
imshow(mod_gray)
title('Modified gray image');

%% Q2
f1=0;
f2=1;
[x,y]=meshgrid(-2:0.2:2, -2:.2:2);
I=sin(2*pi*f1*x+2*f2*y);
surf(x,y,I);
ft=log(abs(fft2(I)));
figure;
imshow(ft)
%% Q3
im1=imread('Charizard.png');
im2p=rgb2gray(imread('pikachu.tif'));
im2=imresize(im2p,[300 297]);
figure;
subplot(121)
imshow(im1);
title('First image')
subplot(122)
imshow(im2);
title('Second image')
ft1=log(abs(fft2(im1)));
ft2=log(angle(fft2(im1)));
ft=ft1+1i*ft2;
ift=ifft2(ft);

%% Q5
t=0:0.01:1;
signal=2*sin(2*pi*t);
subplot(121)
plot(t,signal);
title('Original signal');
axis on;
% quantization
for ii=1:length(t)
if signal(ii)<0.5
    news(ii)=0.5;
elseif signal<1 & signal>0.5
    news(ii)=1;    
elseif signal<1.5 & signal>1
    news(ii)=1.5;
else
    news(ii)=2;
end
end
subplot(122)
plot(t,news);
title('Quantized signal')