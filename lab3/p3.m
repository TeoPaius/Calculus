x = linspace(0,10,100);
values = arrayfun(@(t) (1 + cos(pi*t)) / (1 + t), x) ;

plot(x, values);
hold on

xTest = linspace(0.7,9.2,20);

res = arrayfun(@(t) lag_bar(t, x, values), xTest);

plot(xTest, res, '-o');
