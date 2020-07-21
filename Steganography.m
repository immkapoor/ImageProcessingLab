%% Steganography
cover_im=imread('Charizard.png');
[r c p]=size(cover_im);
if (p==3)
    error('Input image should be Grayscale')
else
    [pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8]=bitplane_code(cover_im);
end
secret1=rgb2gray(imread('pikachu.tif'));
secret=imresize(secret1,[300 297]);
[r1 c1 p1]=size(secret);
if (p1==3)
    error('Input image should be Grayscale')
else
    [bl1,bl2,bl3,bl4,bl5,bl6,bl7,bl8]=bitplane_code(secret);
end

%%
figure;
subplot(3,3,1);
imshow(bl8);
title('1st plane');
subplot(3,3,2);
imshow(bl7);
title('2nd plane');
subplot(3,3,3);
imshow(bl6);
title('3rd plane');
subplot(3,3,4);
imshow(pl4);
title('4th plane');
subplot(3,3,5);
imshow(pl5);
title('5th plane');
subplot(3,3,6);
imshow(pl6);
title('6th plane');
subplot(3,3,7);
imshow(pl7);
title('7th plane');
subplot(3,3,8);
imshow(pl8);
title('8th plane')
rec=bl8+bl7*2+bl6*4+pl4*8+pl5*16+pl6*32+pl7*64+pl8*128;
subplot(3,3,9);
imshow(uint8(rec));
title('Stegno Image');
stego=uint8(rec);
%% Retreiving Image
[r c p]=size(stego);
[pll1,pll2,pll3,pll4,pll5,pll6,pll7,pll8]=bitplane_code(stego);
figure;
subplot(3,3,1);
imshow(pll1);
title('1st plane');
subplot(3,3,2);
imshow(pll2);
title('2nd plane');
subplot(3,3,3);
imshow(pll3);
title('3rd plane');
subplot(3,3,4);
imshow(pll4);
title('4th plane');
subplot(3,3,5);
imshow(pll5);
title('5th plane');
subplot(3,3,6);
imshow(pll6);
title('6th plane');
subplot(3,3,7);
imshow(pll7);
title('7th plane');
subplot(3,3,8);
imshow(pll8);
title('8th plane')
rec=pll3*32+pll2*64+pll1*128;
subplot(3,3,9);
imshow(uint8(rec));
title('Stegno Image');
