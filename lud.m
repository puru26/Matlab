function y=lud(a,b)
t=size(a);
n=t(1,1);
e=b;

v=eye(n);

for k=1:n-1;
%elimination
for i=k+1:n;
    factor=a(i,k)/a(k,k);
    for j=1:n;
        a(i,j)=a(i,j)-factor*a(k,j);
        v(i,k)=factor;
    end
    b(i)=b(i)-factor*b(k);
end 
end


%substitution for finding y
y=zeros(n,1);
y(1)=e(1)/v(1,1);
for i=2:n;
    sum=0;
    for j=1:i-1;
        sum=sum+v(i,j)*y(j);
    end
 y(i)=( e(i)-sum )/v(i,i);
end


% substitution for finding x
x=zeros(n,1);
x(n)=y(n)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+a(i,j)*x(j);
    end
    x(i)=(y(i)-sum)/a(i,i);
end
disp(x)
