E0=.001;
z1=mme(R,C,E0);
n=size(R,1);
R1=zeros(n,1);
for i=1:n
R1(i,1)=z1(1,1)*E0*C(i,1)/(z1(2,1)+C(i,1));
end
plot(C,R1,'b');hold on;
plot(C,R,'r');