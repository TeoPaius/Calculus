xDomain = linspace(-1,1,10);



l1 = arrayfun(@(t) cos(1*acos(t)), xDomain);
l2 = arrayfun(@(t) cos(2*acos(t)), xDomain);
l3 = arrayfun(@(t) cos(3*acos(t)), xDomain);
l4 = arrayfun(@(t) cos(4*acos(t)), xDomain);


subplot(2,2,1)
plot(xDomain, l1)
title("t1")

subplot(2,2,2)
plot(xDomain, l2)
title("t2")

subplot(2,2,3)
plot(xDomain, l3)
title("t3")


subplot(2,2,4)

t0 = ones(1,10);
t1 = zeros(1,10);


for i = 1:10
    t1(i) = xDomain(i);
end

D = [t0;t1];

for i = 3:9
    for j = 1:10
        D(i,j) = 2 * xDomain(j) * D(i-1,j) - D(i-2,j);
    end
end
plot(xDomain,t0,xDomain,t1,xDomain,D(3,:),xDomain,D(4,:),xDomain,D(5,:))

title("recursive variant, all")