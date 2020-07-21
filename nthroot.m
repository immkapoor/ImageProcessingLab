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