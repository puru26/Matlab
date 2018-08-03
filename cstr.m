function [A,b]=cstr(N,k,a0,t)

b=zeros(N,1);
b(1,1)=a0/(1+k*t);
A=eye(N,N);
for i=2:N
    A(i,i)=(1+k*t);
    A(i,i-1)=-1;
end
