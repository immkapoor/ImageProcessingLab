close all; clear all; clc;
x= imread('Charizard.png');
%% Translation
T=[1 0 30; 0 1 30; 0 0 1];
tform = maketform('affine',T');
J = imtransform(x,tform,'XData',[1 size(x,2)],'YData',[1 size(x,1)]);
figure;
subplot(121)
imshow(x);
title('Original image')
subplot(122)
imshow(J);
title('Translated image')
%% Scaling
S=[60 0 0; 0 60 0; 0 0 1];
tform = maketform('affine',S');
J1= imtransform(x,tform,'XYScale',1);
figure;
subplot(121)
imshow(x)
title('original image');
subplot(122)
imshow(J1)
title('scaled image');

%% Shearing
%in vertical
Sv=[1 0.8 0; 0 1 0; 0 0 1];
tform1 = maketform('affine',Sv');
J2= imtransform(x,tform1);
%in horizontal
Sh=[1 0 0; 0.8 1 0; 0 0 1];
tform1 = maketform('affine',Sh');
J3= imtransform(x,tform1);
figure;
subplot(131)
imshow(x)
title('original image');
subplot(132)
imshow(J2)
title('Sheared vertically');
subplot(133)
imshow(J3)
title('Sheared horizontally');

%% Skewing
S1=[1 0 0; 1 1 0; 0 0 1];
tform0 = maketform('affine',S1');
J6 = imtransform(x,tform0);
figure;
subplot(121);
imshow(x);
title('original image')
subplot(122)
imshow(J6);
title('Skewed image')

%% Rotation around
% y axis
R1=[-1 0 0; 0 1 0; 0 0 1];
tform1 = maketform('affine',R1');
M1= imtransform(x,tform1);
% x axis
R2=[1 0 0; 0 -1 0; 0 0 1];
tform2 = maketform('affine',R2');
M2= imtransform(x,tform2);
%origin
R3=[-1 0 0; 0 -1 0; 0 0 1];
tform3 = maketform('affine',R3');
M3= imtransform(x,tform3);
% y =x
R4=[0 1 0; 1 0 0; 0 0 1];
tform4 = maketform('affine',R4');
M4= imtransform(x,tform4);
% y =-x
R5=[0 -1 0;-1 0 0; 0 0 1];
tform5 = maketform('affine',R5');
M5= imtransform(x,tform5);

% Plotting
figure;
subplot(2,3,1)
imshow(x)
title('Original image');
subplot(232)
imshow(M1)
title('Around Y axis')
subplot(233)
imshow(M2)
title('Around X axis')
subplot(234)
imshow(M3)
title('Around origin')
subplot(235)
imshow(M4)
title('Around Y=X')
subplot(236)
imshow(M5)
title('Around Y=-X');