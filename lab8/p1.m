
%f = @(x) exp(-x^2);
f = @(x) 1/sqrt(2.*pi) .* exp(-((x.^2)./2));

integral(f, -5,5)

data = linspace(-5,5,100);

y = arrayfun(f,data);

plot(data,y);
hold on;

rectangleQuad(f,-5,5)

%plot([1 1.5 1.5 1 1],[0 0 f(1.25) f(1.25) 0],'b-');

tests = linspace(-5,5,50);
tests2 = linspace(-5,5,500);

res50 = repeatedRectangle(f,-5,5,tests);
res500 = repeatedRectangle(f,-5,5,tests2);
fprintf("50 samples: %.6f\n500 samples: %.6f", res50,res500);