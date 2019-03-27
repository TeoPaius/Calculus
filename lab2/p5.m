x = [2;4;6;8];
f1 = [4;8;14;16];
n = 4;
result = zeros(4,5) * NaN;
result(:,1) = x;
result(:,2) = f1


for j=3:5
    for i=1:n-j+2
        result(i,j)=(result(i+1,j-1)-result(i,j-1))/(x(i+j-2)-x(i));
    end
end
% 
% j 3 1
% j 4 2

result
