function res = secant(itmax,x0,x1,f,eps)
  xn = x1;
  xn_1 = x0;
 
  aux = xn;
  xn = xn - feval(f,xn) * ( (xn-xn_1) / (feval(f,xn)-feval(f,xn_1)) );
  xn_1 = aux;
  itmax--;
  number=1;
  
  while itmax>0 && abs(xn-xn_1)>eps
    aux = xn;
    xn = xn - feval(f,xn) * ( (xn-xn_1) / (feval(f,xn)-feval(f,xn_1)) );
    xn_1 = aux;
    itmax--;
    number++;
  end
  printf("Number of iterations :\n");
  number
  res = xn;
end