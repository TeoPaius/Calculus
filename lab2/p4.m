h = 0.25;
a = 1;
n = 7;
coef = 0:1:6;
f = @(x) sqrt(5*x^2 + 1);

ai = a + coef.*h;

result = zeros(7,8) * NaN;
result(:,1) = ai';
result(:,2) = arrayfun(f,ai)';


for j=3:8
    for i=1:n-j+2
        result(i,j)=result(i+1,j-1)-result(i,j-1);
    end
end


result
