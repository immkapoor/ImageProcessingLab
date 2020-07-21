clc;
a=imread('Charizard.png');
[r c p]=size(a);
if (p==3)
    error('Input image should be Grayscale')
else
    [pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8]=bitplane_code(a);
end
figure;
subplot(3,3,1);
imshow(pl1);
title('1st plane');
subplot(3,3,2);
imshow(pl2);
title('2nd plane');
subplot(3,3,3);
imshow(pl3);
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
rec=pl1+pl2*2+pl3*4+pl4*8+pl5*16+pl6*32+pl7*64+pl8*128;
subplot(3,3,9);
imshow(uint8(rec));
title('Original Image');

% Gray Bit Planes
figure;

d1=pl1;
subplot(331)
imshow(logical(d1));
title('1st plane');
d2=xor(pl1,pl2);
subplot(332)
imshow(logical(d2));
title('2nd plane');
d3=xor(pl3,pl2);
subplot(333)
imshow(logical(d3));
title('3rd plane');
d4=xor(pl3,pl4);
subplot(334)
imshow(logical(d4));
title('4th plane');
d5=xor(pl4,pl5);
subplot(335)
imshow(logical(d5));
title('5th plane');
d6=xor(pl5,pl6);
subplot(336)
imshow(logical(d6));
title('6th plane');
d7=xor(pl6,pl7);
subplot(337)
imshow(logical(d7));
title('7th plane');
d8=xor(pl8,pl7);
subplot(338)
imshow(d8);
title('8th plane');
rec1=d1+d2*2+d3*4+d4*8+d5*16+d6*32+d7*64+d8*128;
subplot(339);
imshow(uint8(rec1));
title('Original Image');