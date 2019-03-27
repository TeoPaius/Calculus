x = linspace(1,5,5);
y = [22 23 25 30 28];
n= 5;
X = 2.5;

res = newton(x,y,n,X)

X = linspace(1,5,100);
Y = newton(x,y,n,X);
plot(x,y)
hold on;
plot(X,Y)