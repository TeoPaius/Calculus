x = [1 1.5 2 3 4];
y = [0 0.17609 0.30103 0.47712 0.60206];
X = [2.5 3.25];
n = 5;
result = newton(x,y, n,X);


xi = 1:0.1:3.5;
yi = newton(x,y,n, xi);

yigood = log10(xi);

error = max(abs(yi - yigood))

plot(x, y, "o")
hold on;
plot(xi, yi, "x")
