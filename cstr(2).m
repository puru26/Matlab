function [a,b]=cstr(N,k,a0,t)

b=zeros(N,1);
b(1,1)=a0/(1+k*t);
a=eye(N,N);
for i=2:N
    a(i,i)=(1+k*t);
    a(i,i-1)=-1;
end