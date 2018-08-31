function z1=mme(r,c)

n=11;
q=zeros(2,2);t=zeros(2,1);
q(1,1)=n;
% sum=0;sm=0;
% for i=1:n
% q(1,2)=sum+c(1,i);
% q(2,1)=sum+c(1,i);
% q(2,2)=sm+(c(1,i))^2;
% end
% 
%  for i=1:2
%      sum=0;
%      for j=1:n
%          t(i,1)=sum+r(1,j)*(c(1,j))^(i-1);
%      end
%  end
%  q
%  t
%  
% z=inv(q)*t;
% z
 sumx=0;sumxy=0;sumy=0;sumx2=0;
 for i=1:n
     sumx=sumx+c(1,i);
     sumy=sumy+r(1,i);
     sumxy=sumxy+c(1,i)*r(1,i);
     sumx2=sumx2+c(1,i)*c(1,i);
 end
 xm=sumx/n;
 ym=sumy/n;
 a1=(n*sumxy-sumx*sumy)/(n*sumx2-sumx*sumx);
 a0=ym-a1*xm;


%  z1(1,1)=1/z(1,1);
%  z1(2,1)=z(2,1)/z(1,1);
z1=[1/a0;a1/a0];
 
 