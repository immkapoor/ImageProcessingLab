clc;
clear all;
a=imread('fire.tif');
imshow(a)
dict=1:256;
count=length(dict)
[nor noc] 5= size(a);
for l=1:nor
    for k=1:noc
row=a(l,:)
col=a(:,k)
for jj=1:length(row)
  for ii=1: length(col)
      bit=a(ii,jj);
   if ismember(bit,dict)
       bit=dictval;
   else
       count=count+1;
     dictentry(dict,bit);
   end
  end
end
    end
end
