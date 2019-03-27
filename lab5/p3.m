x = linspace(-5,5,15);
fx = arrayfun(@(t) sin(2*t), x);
fDx = arrayfun(@(t) 2*cos(2*t), x);
n = 15;
test = linspace(-5,5,100);


res = hermite(x,fx,fDx,n, test);

plot(x,fx);
hold on
plot(test, res, '-g');
