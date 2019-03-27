function N = newton(x, f, n, X)
  A = div_table(x,f,n);
  
  A = A(1,2:end);
  ones(size(X'));
  cumprod(X' - x(1:end-1), 2);
  
  C = [ones(size(X')), cumprod(X' - x(1:end-1), 2)];

  N = A * C';
  
  
end