function res = repeated_simpson(a,b,n,f)
  res = (b-a)/6*(feval(f,a)+4*feval(f,(a+b)/2)+feval(f,b));
  
  h=(b-a)/n;
  V = a:h:b;
  aux_sum1=0;
  aux_sum2=0;
  for k=1:n
    aux_sum1 += feval(f,(a+(k-1)*h+a+k*h)/2);
  end
  for k=1:n-1
    aux_sum2 += feval(f,a+k*h);
  end
  res = (b-a)/(6*n)*(feval(f,a)+feval(f,b) + 4*aux_sum1 + 2*aux_sum2 );
end