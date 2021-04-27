function res = repeated_rectangle(a,b,n,f)
  h=(b-a)/(n);
  x1 = a + (b-a)/(2*n);
  aux_sum1=0;
  for k=1:n
    aux_sum1 += feval(f,(x1+(k-1)*h));
  end
  res = (b-a)/n*aux_sum1;
end