function x= gausspp(a,b)
q=size(a);d=det(a);v=size(b);
if q(1)==q(2)&& d~=0 && q(1)==v(1)
    A=[a,b];
    for j=1:q(1)-1
    for i=j:q(1)-1
        if abs(A(i+1,j))>abs(A(j,i))
            temp=A(i+1,:);
            A(i+1,:)=A(j,:);
            A(j,:)=temp;
        end
    end
    x=zeros(q(1),1);
    for i=q(1):-1:1
        sum=0;
        for j=i+1:q(1)
            sum=sum+A(i,j)*x(j,1);
        end
        x(i)=(A(i,q(1)+1)-sum)/A(i,i);
    end
    end
end