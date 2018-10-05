function f = value1(t,x)
f(1,1)=.1*(1000-x(1,1))-.1*(x(1,1)^2);
for i=2:5
    f(i,1)=.1*(x(i-1,1)-x(i,1))-.1*(x(i,1)^2);
end