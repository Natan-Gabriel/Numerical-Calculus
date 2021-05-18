function res = kepler_with_newton(x0,f)
  xn = x0;
  xn1 = x0;
  xn = xn1;
  xn1 = xn - feval(f,xn)/deriv(f,xn);
  itmax=5;
  number=1;
  printf("At iteration %d the precision is %d and the approximation is %d :\n",number,abs(xn-xn1),xn1);
  
  while itmax>0
    xn = xn1;
    xn1 = xn - feval(f,xn)/deriv(f,xn);
    itmax--;
    number++;
    printf("At iteration %d the precision is %d and the approximation is %d :\n",number,abs(xn-xn1),xn1);
  end
  printf("Total number of iterations :\n");
  number
  res = xn1;
end