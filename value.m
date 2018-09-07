function q = value(a)
n = size(a) ;
t=50/n(1);
K=.1;
q(1,1)=a(1)+K*t*a(1)^2-1000;
for i =2:n
    q(i,1) =a(i)+K*t*a(i)^2-a(i-1);
end
end