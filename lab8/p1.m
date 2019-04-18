
f = @(x) exp(-x^2);

data = linspace(0,2,100);

y = arrayfun(f,data);

%plot(data,y);
%hold on;

rectangleQuad(f,1,1.5)

%plot([1 1.5 1.5 1 1],[0 0 f(1.25) f(1.25) 0],'b-');

tests = linspace(1,1.5,50);
tests2 = linspace(1,1.5,500);

res50 = repeatedRectangle(f,1,1.5,tests);
res500 = repeatedRectangle(f,1,1.5,tests2);
fprintf("50 samples: %.6f\n500 samples: %.6f", res50,res500);