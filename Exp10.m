clc;
clear all;
I1=imread('Charizard1.png');
I=rgb2gray(I1);
In=imresize(I,[256 256]);
Id=im2double(In);
% I2=fft2(In);
% f=fftshift(I2);
% a=abs(I2); 
% m=min(a);
% n=max(a);
% m1=min(m);
% m2=max(n);
% l=log(a);
% imshow(a,[m1,m2])
l=log(abs(fft2(Id)));
imshow(l);
title('Magnitude');
angledim=(angle(fft2(Id)));
imshow(angledim);
title('Phase of image');
% title('Magnitude of transformed image')
% imhist(I)
%% testing
combined=l+i*angledim;
imshow(uint8(combined))
%% Using function
I=imread('Charizard.png');
In=imresize(I,[256 256]);
for x=1:256
    for y=1:256
        for u=1:256
            for v=1:256
         t=exp(-j*2*pi(((u*x)/256)+((v*y)/256)));
         Inew=I(x,y)*t;
            end
        end
    end
end
