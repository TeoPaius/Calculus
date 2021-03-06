x = [ 0 pi/2 pi 3*pi/2 2*pi];

y = sin(x);

xTest = 0:pi/8:2*pi;
yRes = spline(x,y,xTest);
yResClamped = spline(x, [cos(0) y cos(2*pi)],xTest);

plot(x,y);
hold on
plot(xTest, yRes);
hold on 
plot(xTest, yResClamped);


legend('normal', 'spline', 'clamped spline');