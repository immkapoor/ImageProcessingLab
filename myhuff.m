clc;
clear all;
%Image
A=[  21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ];
[r c]= size(A); %getting rows and columns
n=r.*c;
B=unique(A); %find the unique elements
for j=1:1:4
y = sum(A == B(j)); %Compare each column of the matrix with the entries in that column.
C(j)=sum(y);
p(j) = C(j)/n;  % finding probabilities
end
q=p';
dict = huffmandict(B,q); %creating dictionary
C=[A(1,:), A(2,:),A(3,:),A(4,:)]; %changing the matrix into row vector
hcode = huffmanenco(C,dict);  %Encoding the image using dictionary
dhsig = huffmandeco(hcode,dict); 
