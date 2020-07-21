%% using Gray coding
g=imread('pikachu.tif');

% for i = 1:size(g)
%     for j=2:size(g)
%     x(i,j) = xor( x(i,j-1), x(i,j) ); %XORing the following bits as per the procedure
%     end
% end 

b1 = double(bitget(g,1));
b2 = double(bitget(g,2));
b3 = double(bitget(g,3));
b4 = double(bitget(g,4));
b5 = double(bitget(g,5));
b6 = double(bitget(g,6));
b7 = double(bitget(g,7));
b8 = double(bitget(g,8));
g1=double(b1);
g2=double(xor(b1,b2));
g3=double(xor(b2,b3));
g4=double(xor(b3,b4));
g5=double(xor(b4,b5));
g6=double(xor(b5,b6));
g7=double(xor(b6,b7));
g8=double(xor(b7,b8));
figure,
imshow(g);
title('Original:');
figure; 
subplot(4,2,1);
imshow(g1);
title('Bit Plane: 1');
subplot(4,2,2)
imshow(g2);
title('Bit Plane: 2');
subplot(4,2,3)
imshow(g3);
title('Bit Plane: 3');
subplot(4,2,4)
imshow(g4);
title('Bit Plane: 4');
subplot(4,2,5);
imshow(g5);
title('Bit Plane: 5');
subplot(4,2,6)
imshow(g6);
title('Bit Plane: 6');
subplot(4,2,7)
imshow(g7);
title('Bit Plane: 7');
subplot(4,2,8)
imshow(g8);
title('Bit Plane: 8');