function result = div_table(x, f1, n)
    result = zeros(n,n+1) * NaN;
    result(:,1) = x;
    result(:,2) = f1;
    for j=3:n+1
        for i=1:n-j+2
            result(i,j)=(result(i+1,j-1)-result(i,j-1))/(x(i+j-2)-x(i));
        end
    end
end