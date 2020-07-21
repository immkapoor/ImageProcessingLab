%% Stretching an image
Img=imread('Charizard.png');
[rows, columns, numberOfColorChannels] = size(Img);
subplot(2, 1, 1);
imshow(Img);
newWidth = round(1.592013 * columns)
subplot(2, 1, 2);
stretchedImage = imresize(Img, [rows newWidth]);
imshow(stretchedImage);

%% Averaging a noisy image
Jnew=(J+J+J+J)/4;
figure;
imshow(Jnew)
Jnew1=(J+J+J+J+J+J+J+J+J+J)/10;
figure;
imshow(Jnew1)
for ii=1:1000
J1=J+J;
end
J1=J1/999;
figure;
imshow(J1)