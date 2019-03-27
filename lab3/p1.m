x = 1930:10:1980;
values = [123203,131669,150697,179323,203212,226505];

format long;
res = lag_bar(1955,x,values);
fprintf("year 1955: %.2f\n", res)


res = lag_bar(1995,x,values);
fprintf("year 1995: %.2f\n", res)




