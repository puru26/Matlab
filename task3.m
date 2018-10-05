x0=[1000;1000;1000;1000;1000];
[t,x]=euler_ei(@value1,x0,10,.001);
plot(t,x(:,1));
hold on
plot(t,x(:,2),'g');
hold on
plot (t,x(:,3),'r');
hold on
plot (t,x(:,4),'y');
hold on
plot (t,x(:,5),'black');