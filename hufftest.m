clc;
clear all;
A=[  21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ;
     21 21 21 95 169 243 243 243 ];
[r c]= size(A);
n=r.*c;
s=unique(A);
for j=1:1:4
y = sum(A == s(j)); %Compare each column of the matrix with the entries in that column.
C(j)=sum(y);
q(j) = C(j)/n;  
end
p=q';
i=1;
for m=1:length(p)
   for n=1:length(p)
       if(p(m)>p(n))
         a=p(n); 
         a1=s(n);
         p(n)=p(m);
         s(n)=s(m);  
         p(m)=a;   
         s(m)=a1;
       end
   end
end
tempfinal=[0];
sumarray=[];
w=length(p);
lengthp=[w];
b(i,:)=p;
while(length(p)>2) 
 tempsum=p(length(p))+p(length(p)-1);
 sumarray=[sumarray,tempsum];
 p=[p(1:length(p)-2),tempsum];
 p=sort(p,'descend');
 i=i+1;
 b(i,:)=[p,zeros(1,w-length(p))];
 w1=0;
 lengthp=[lengthp,length(p)];
 
 for temp=1:length(p) 
     if p(temp)==tempsum;
       w1=temp;
     end
 end
 tempfinal=[w1,tempfinal];  % Find the place where tempsum has been inserted
 display(p);
end
 sizeb(1:2)=size(b);
 tempdisplay=0;
 temp2=[];
 
 for i= 1:sizeb(2)   
  temp2=[temp2,b(1,i)];
 end 
 sumarray=[0,sumarray];
  var=[];
  e=1;
 for ifinal= 1:sizeb(2)
  code=[s(ifinal),'      ']
 for j=1:sizeb(1) 
     tempdisplay=0; 
    
 for i1=1:sizeb(2) 
    if( b(j,i1)==temp2(e))  
    tempdisplay=b(j,i1);     
  end
   if(tempdisplay==0 & b(j,i1)==sumarray(j))
           tempdisplay=b(j,i1);
  end
 end
    var=[var,tempdisplay];
 if tempdisplay==b(j,lengthp(j))       %assign 0 & 1
      code=[code,'1']; 
 elseif tempdisplay==b(j,lengthp(j)-1)
      code=[code,'0'];
 else
      code=[code,''];
   end 
      temp2(e)=tempdisplay;  
  end  
   display(code) %display final codeword
    e=e+1;
 end
