function x= gausssei(a,b,imax,rer)
t=size(a);
n=t(1,1);
for i=1:n
    dummy=a(i,i);
    for j=1:n
        a(i,j)=a(i,j)/dummy;
        b(i)=b(i)/dummy;
    end
end
x=zeros(n,1);
% itr=1;
% var=1;
% while 1
    
for i=1:n
    sum=b(i);
%     old=x(i);
for j=1:n
    
        sum=sum-a(i,j)*x(j,1);
         x(i)=sum+a(i,i)*x(i,1);
end
   
   
%     er=abs((x(i)-old)/x(i))*100;
%     if er>rer 
%         var=0;
%     end
    
% end
%  itr=itr+1;
%  if var==1 || itr>=imax
%      break
%  end

end
disp (b)

        
    


    

