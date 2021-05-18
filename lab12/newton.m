
function res = newton(itmax,x0,f,eps)
  xn = x0;
  xn1 = x0;
  xn = xn1;
  xn1 = xn - feval(f,xn)/deriv(f,xn);
  itmax--;
  number=1;
  
  while itmax>0 && abs(xn-xn1)>eps
    xn = xn1;
    xn1 = xn - feval(f,xn)/deriv(f,xn);
    itmax--;
    number++;
  end
  printf("Number of iterations :\n");
  number
  res = xn1;
end