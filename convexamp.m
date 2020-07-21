clc;
clear;
I=[0 0 0 0 0;
   0 0 0 0 0;
   0 0 1 0 0;
   0 0 0 0 0;
   0 0 0 0 0];
K=[1:3;4:6;7:9];
xLayer=floor((size(K)-1)/2);
B_x = padarray(I,xLayer,'circular');    % B is expanded with an extra 2 layers of mirror values
C_x = conv2(K,B_x);
C_correct = C_x(xLayer+2:end-(xLayer+1), xLayer+2:end-(xLayer+1))
