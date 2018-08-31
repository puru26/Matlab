function z1=parameters(R,C)
E0=1e-3;
for i=1:11
    r(1,i)=E0/R(1,i);
    c(1,i)=1/C(1,i);
end
z1=mme(r,c);
r1=zeros(1,11);
for i=1:11
r1(1,i)=z1(1,1)*E0*C(1,i)/(z1(2,1)+C(1,i));
end
plot(C,r1,'r');hold on;
plot(C,R,'g')