function J=jacobian(fun,t,x_guess)
nof=length(x_guess);
n=nof(1,1);
J=zeros(n,n);
     for j=1:n
         dx=zeros(n,1);
         dx(j)=1e-3;
         J(:,j)=(fun(t,x_guess+dx)-fun(t,x_guess-dx))/(2*dx(j));
      end
    