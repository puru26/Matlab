function a=leastsquare(y,X)
if nargin<3
    flag=0;
end
if size(y,1)~=size(X,1)
    disp('inconsistant x and y entris');
    a=[];
else
    numData=size(y,1);
    if flag~=1
        X1=[ones(numData,1) X];
    else
        X1=X;
    end
    A=X1'*X1;
    b=X1'*y;
    a=A\b;
end
    
    