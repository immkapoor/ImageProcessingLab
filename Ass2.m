%%Histogram Equalization
img = imread('coffee.jpg');
%img = imresize(imgo,[256 256]);
%imhist(img);
%% Histogram Equalization
[r,c] = size(img);
HIm=uint8(zeros(r,c));
numofpixels = r*c;
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
%freq counts the occurrence of each pixel value.
%The probability of each occurrence is calculated by probf.
for ii=1:r
    for jj=1:c
        value=img(ii,jj);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
    end
end
sum=0;
no_bins=255;
%The cumulative distribution probability is calculated. 
for ii=1:size(probf)
   sum=sum+freq(ii);
   cum(ii)=sum;
   probc(ii)=cum(ii)/numofpixels;
   output(ii)=round(probc(ii)*no_bins);
end
for ii=1:r
    for jj=1:c
            HIm(ii,jj)=output(img(ii,jj)+1);
    end
end
figure,imshow(HIm);
title('Histogram equalization');
%%
figure;
subplot(121)
imhist(HIm)
title('Equalized using definition');
subplot(122)
equalized = histeq(img);
imhist(equalized)
title('Equalized using built in function')

%% Histogram matching
im1 = imread('lena.png');
im2 = imread('Charizard.png');
M = zeros(256,1,'uint8'); %// Store mapping - Cast to uint8 to respect data type
hist1 = imhist(im1); %// Compute histograms
hist2 = imhist(im2);
cdf1 = cumsum(hist1) / numel(im1); %// Compute CDFs
cdf2 = cumsum(hist2) / numel(im2);
% cdf1 = cumsum(hist1);
% cdf2 = cumsum(hist2);
%// Compute the mapping
for idx = 1 : 256
    [~,ind] = min(abs(cdf1(idx) - cdf2));
    M(idx) = ind-1;
end

%// Now apply the mapping to get first image to make
%// the image look like the distribution of the second image
out = M(double(im1)+1);
%%
figure;
subplot(141)
imhist(out)
title('Histogram of first image');
subplot(142)
imhist(im2)
title('Histogram of second image');
matched = imhistmatch(im1,im2);
subplot(143)
imhist(matched)
title('Histogram of first image using built in fun')
subplot(144)
imhist(im2)
title('Histogram of second image')
%% 
figure;
subplot(121)
imshow(im1);
title('Original image');
h1=fspecial('gaussian',[3 3],1.5);
f=imfilter(im1,h1);
subplot(122);
imshow(f);
title('Smoothening using Gaussian Kernel(using inbuilt command)');
%% Gaussian 5x5njuq
subplot(121);
imshow(im1)
title('Original image');
K=[1 4 7 4 1; 4 16 26 16 4; 7 26 41 26 7; 4 16 26 16 4; 1 4 7 4 1];
R=(1/273)*K;
f=uint8(filter2(R,im1));
subplot(122);
imshow(f);
title('Smoothened image using gaussian kernel')
%% Box Kernel
figure
subplot(121);
imshow(im1);
title('Original image');
K2=ones(5,5);
R2=(1/25)*K2;
f1=uint8(filter2(R2,im1));
subplot(122);
imshow(f1);
title('Smoothened image using Box kernel');
%%
sigma = 1:0.5:5;
M=imgaussfilt(im1,sigma);
figure;
subplot(121)
imshow(im1);
title('Original image');
subplot(122);
imshow(M);
title('Smoothening using Gaussian Kernel(using inbuilt command)');

%% Median Filtering
N = 5;
im_pad = padarray(im1, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');
med_vector = sorted_cols(floor(N*N/2) + 1, :);
out = col2im(med_vector, [N N], size(im_pad), 'sliding');
figure;
subplot(211)
imshow(im1)
title('original image');
subplot(212);
imshow(out)
title('Filtered image');
%% Sharpening
clc;
clear all;
I2=imread('lena.png'); %reading image
I1=imresize(I2,[256 256]);
subplot(131);
imshow(I1);
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
%%
img = imread('lena.png');
% create gaussian filter
h = fspecial('gaussian',5,2.5);
% blur the image
blurred_img = imfilter(img,h);
% subtract blurred image from original
diff_img = img - blurred_img;
% add difference to the original image
highboost_img = img + 3*diff_img;
subplot 221
imshow(img,[]);
title('Original Image')
subplot 222
imshow(blurred_img,[]);
title('Blurred Image')
subplot 223
imshow(diff_img,[]);
title('Difference Image')

subplot 224
imshow(highboost_img,[]);
title('HighBoosted Image')
