N=[1 2 5 10 20 50 100];
k=0.1;
c0=1000;

T=50;
t=zeros(1,7);
d=zeros(1,7);
for i=1:7
    t(1,i)=T/N(1,i);
    [A,b]=cstr(N(1,i),k,c0,t(1,i));
    x=gausseli(A,b);
    d(1,i)=x(N(1,i),1);
end
plot(N,d);
