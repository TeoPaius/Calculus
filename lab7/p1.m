f = @(x) 2/(1+x^2);
samples = 0:0.1:1;
y = arrayfun(f, samples);


a = 1;
b = 2;
n = size(samples,2);
syms k;



approx = (b-a)/2*n * (f(a)+f(b) + sum(arrayfun(f, samples(1:end-1))));

fprintf("integral approx:  %f\n", approx);

plot(samples, y);
hold on

pgon = polyshape([0 0 1 1],[0 f(0) f(1) 0]);
plot(pgon);