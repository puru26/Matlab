function z1=powerlaw(y,x)
if size(y,1)~=size(x,1)
    disp('inconsistant x and y entris');
    z=[];
else
    size(y,1)=n;
    for i=1:n
        x(i,1)=log(x(i,1));
        y(i,1)=log(y(i,1));
    end
    z=leastsquare(y,x);
    z1=[exp(z(1,1));z(2,1)];
end