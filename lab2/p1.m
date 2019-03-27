xDomain = linspace(0,1,100);

l1 = xDomain;
l2 = 3/2.*xDomain.^2 - 1/2;
l3 = 5/2.*xDomain.^3 - 3/2.*xDomain;
l4 = 35/8.*xDomain.^4 - 15/4.*xDomain.^2 + 3/8;

subplot(2,2,1)
plot(xDomain, l1)

subplot(2,2,2)
plot(xDomain, l2)

subplot(2,2,3)
plot(xDomain, l3)

subplot(2,2,4)
plot(xDomain, l4)

