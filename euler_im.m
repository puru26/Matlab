function [t,x]=euler_im(funvalue,x0,tf,h)
itermax=100;
errtol=0.001;
N=ceil(tf/h);
t=zeros(N+1,1);
x=zeros(N+1,length(x0));
x(1,:)=x0';
for i=1:N
    t(i+1)=t(i)+h;
    x_c=x(i,:)';
    x_g=x_c+h*funvalue(t(i),x_c);
    disp(['For t =' num2str(t(i+1))]);
    for ii=1:itermax
        N1=length(x_g);
        f=x_c+h*funvalue(t(i+1),x_g)-x_g;
        J=h*jacobian(funvalue,t(i+1),x_g)-eye(N1);
        x_new=x_g-J\f;
        er=norm(x_c+h*funvalue(t(i+1),x_g)-x_new);
        if er<errtol
            disp(['Convergence achieved in' num2str(ii) 'iterations'])
            break;
        else
            if ii==itermax
                disp('Max iter reached without satisfying convergence')
            else
                x_g=x_new;
            end
        end
    end
    x(i+1,:)=x_new;
end