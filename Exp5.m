clc;
clear all;
%% Image synthesises
I1=zeros(10,50);
I2=ones(10,50);
I=[I1; I2; I1; I2;I1;I1;I2;I2;I1;I1];
figure;
imshow(I);
title('Synthesized image for varying duty cycle')
x=[25 25];
y=[0 100];
figure;
improfile(I,x,y);
%% Perfect square wave
I3=zeros(25,50);
I4=ones(25,50);
Inew=[I3;I4;I3;I4];
figure;
x1=[25 25];
y1=[0 100];
imshow(Inew);
title('Synthesized image for perfect square wave')
figure;
improfile(Inew,x1,y1)