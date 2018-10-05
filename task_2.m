[t1,x1]=euler_e(@value,1,100,3);
[t2,x2]=euler_ei(@value,1,100,5);
t=0:.1:100;
x=exp(-.1*t);
plot(t,x,'g');
hold on
plot(t1,x1(:,1),'r');
hold on
plot(t2,x2(:,1),'b');
hold on

