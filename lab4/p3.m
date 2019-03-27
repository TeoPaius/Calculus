x = linspace(0,6,13);
y = arrayfun(@(x1) exp(sin(x1)), x);
n= 13;

X = linspace(0,6,100);
Y = newton(x,y,n,X);
plot(x,y)
hold on;
plot(X,Y)