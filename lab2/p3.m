domain = linspace(-1,3,20);
x0 = 0;

syms k;

S1 = @(x,n) symsum(((x-x0) ^ k)/factorial(k) * exp(x0), k, 0, n);

P1 = arrayfun(@(x) S1(x,1), domain);
P2 = arrayfun(@(x) S1(x,2), domain);
P3 = arrayfun(@(x) S1(x,3), domain);
P4 = arrayfun(@(x) S1(x,4), domain);
P5 = arrayfun(@(x) S1(x,5), domain);
P6 = arrayfun(@(x) S1(x,6), domain);

plot(domain, P1,domain, P2,domain, P3,domain, P4,domain, P5,domain, P6)
