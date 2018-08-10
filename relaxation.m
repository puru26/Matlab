function x= relaxation(a,b,x0,lambda,imax,rer)
t=size(a);
n=t(1);
if nargin<3 
    disp('initial guess not provided , using default initial guess')
    x0=ones(n,1);
    lambda=1;
    imax=100;
    rer=1e-3;
elseif nargin<4
    lambda=1;
        imax=100;
        rer=1e-3;
elseif nargin<5
    imax=100;
            rer=1e-3;
elseif nargin<6
    rer=1e-3;
end
if t(1)~=t(2)
    disp('a is not a square matrix')
elseif t(1)~=size(b,1)
    disp('matrix b dimensions not compatible with a')
elseif t(2)~=size(x0,1)
    disp('matrix x0 dimensions not compatible with a')
else
    
for i=1:n
    if a(i,i)==0
    row_swap=false;
    for j=i+1:n
        if a(j,i)~=0
            row_swap=true;
            temp_a=a(j,:);
            temp_b=b(j,1);
            a(j,:)=a(i,:);
            b(j,1)=b(i,1);
            a(i,:)=temp_a;
            b(i,1)=temp_b;
            break;
        end
    end
     if ~row_swap
         for j=1:i-1
             if a(j,i)~=0 && a(i,j)~=0
                 temp_a=a(j,:);
            temp_b=b(j,1);
            a(j,:)=a(i,:);
            b(j,1)=b(i,1);
            a(i,:)=temp_a;
            b(i,1)=temp_b;
            break;
             end
         end
     end
    end
end



for i=1:n
    dummy=a(i,i);
    for j=1:n
        a(i,j)=a(i,j)/dummy;
        b(i)=b(i)/dummy;
    end
end
      

x= zeros(n,1);
for i=1:imax
    for j=1:n
        sum=0;
        for m=1:n
        if m<j
            sum=sum+a(j,m)*x(m);
        elseif m>j
            sum=sum+a(j,m)*x0(m);
        end
        end
        x(j)=b(j)-sum;
    end
    x=x0+lambda*(x-x0);
    res= b-a*x;
    rel_error=norm(res)/norm(b);
    if rel_error<rer
        disp('convergence achieved in num2str(i) iterations')
    elseif i==imax
        disp('max iteratuions reached without convergence')
    else x0=x;
    end
end
end
end