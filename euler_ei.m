function [t,x]=euler_ei(fun,x0,tf,h)
N=ceil(tf/h);
t=zeros(N+1,1);
x=zeros(N+1,length(x0));
x(1,:)=x0';
for i=1:N
    t(i+1)=t(i)+h;
    x(i+1,:)=x(i,:)+h*fun(t(i),x(i,:)')';
    k1=fun(t(i),x(i,:)')';
    k2=fun(t(i+1),x(i+1,:)')';
    x(i+1,:)=x(i,:)+(h/2)*(k1+k2);
end
