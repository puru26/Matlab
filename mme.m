function z1=mme(R,C,E0)
if size(R,1)~=size(C,1)
    disp('inconsistant R and C entris');
    z1=[];
else
    n=11;
    r=zeros(n,1);c=zeros(n,1);
    for i=1:n
        r(i,1)=1/R(i,1);
        c(i,1)=1/C(i,1);
    end
    z=leastsquare(r,c);
    z1=[1/(E0*z(1,1));z(2,1)/z(1,1)];
end
        
        
    