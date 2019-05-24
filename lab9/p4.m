fprintf("a\n");

for n = 10:15
    k = 1:n;
    tk = 1 ./ k;
    A = vander(tk);
    cnd = cond(A);
    fprintf("n = %d, cond(n) = %f\n", n, cnd);
end

fprintf("b\n");
for n = 10:15
    k = 1:n;
    tk = -1 + (2/n) .* k;
    A = vander(tk);
    cnd = cond(A);
    fprintf("n = %d, cond(n) = %f\n", n, cnd);
end