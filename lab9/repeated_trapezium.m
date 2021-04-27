% 60r/(r*r-p*p)  = (60*110)/(110^2 -75^2  ) = 1.01930501931

function res = repeated_trapezium(a,b,n,f)
  h=(b-a)/n;
  V = a:h:b;
  aux_sum=0;
  for k=1:n-1
    aux_sum += feval(f,a+k*h);
  end
  res = (b-a)/(2*n)*(feval(f,a)+feval(f,b) + 2*aux_sum );
end
