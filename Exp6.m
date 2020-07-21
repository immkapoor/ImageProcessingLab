%% Finding an unknown object
P1=imread('MiniPresent.jpg');
P2=imread('Miniabsent.jpg');
Pg1=rgb2gray(P1);
Pg2=rgb2gray(P2);
P=Pg2-Pg1;
subplot(1,3,1)
imshow(Pg1)
title('first image');
subplot(1,3,2)
imshow(Pg2)
title('second image');
subplot(1,3,3)
imshow(P)
title('subtarcted image')