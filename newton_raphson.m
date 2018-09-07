function x0 = newton_raphson(k,x0)

n = size(x0);
for iter = 1:100
    
    for j = 1 : n
        y = x0 ;
        y(j,1) = y(j,1) + 1e-3 ;
        p = k(y);
        m = k(x0);
        for i = 1 : n
            J(i,j)= (p(i,1) - m(i,1))/(1e-3);
        end
    end
    
    u = k(x0);
    dx = gauss(J,u) ;
    x0 = x0 - dx ;
end

end


