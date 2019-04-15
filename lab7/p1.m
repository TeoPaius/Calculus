f = @(x) 2./(1+x.^2);
samples = 0:0.01:1;
y = arrayfun(f, samples);

integral(f, 0,1)

a = 0;
b = 1;
n = size(samples,2)-1;



approx = (b-a)/(2*n) * (f(a)+f(b) + 2*sum(arrayfun(f, samples(2:end-1))));

fprintf("integral approx:  %f\n", approx);

plot(samples, y);
hold on


pgon = polyshape([0 0 1 1],[0 f(0) f(1) 0]);
plot(pgon);


%simpson

temp = (samples(2:end) + samples(1:end-1))/2;

approx_s = (b-a)/(6*n) * (f(a)+f(b) + 4*sum(arrayfun(f, temp))+ 2*sum(arrayfun(f, samples(2:end-1))));

fprintf("simpson approx:  %f\n", approx_s);