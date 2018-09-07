N = [1;2;5;10;20;50;100];
for i=1:7
    x0=ones(N(i),1);
    c=newton_raphson(@value,x0);
    p(i,1)=c(N(i),1);
end
scatter(N,p)