function z1= powerlaw(y,x)
k=size(x);
n=k(2);
Y=zeros(1,n);X=zeros(1,n);
for i=1:n
    Y(1,i)=ln(y(1,i));
    X(1,i)=ln(x(1,i));
end
q=zeros(2,2);r=zeros(2,1);
q(1,1)=n;
sum=0;sm=0;
for i=1:n
q(1,2)=sum+X(1,i);
q(2,1)=sum+X(1,i);
q(2,2)=sm+(X(1,i))^2;
end
 for i=1:2
     sum=0;
     for j=1:n
         r(i,1)=sum+Y(1,j)*(X(1,j))^(i-1);
     end
 end
 z=zeros(2,1);
 z(2,1)=(n*r(2,1)-q(2,1)*r(1,1))/(n*q(2,2)-(q(2,1))^2);
 z(1,1)=(r(1,1)/n)-z(2,1)*q(2,1)/n;
 z1=[exp(z(1,1));z(2,1)];