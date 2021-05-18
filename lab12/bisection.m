function res = bisection(itmax,an,bn,f,eps)
  number=0;
  
  while itmax>0 && abs(an-bn)>eps
    c = (an+bn)/2;
    if feval(f,an)*feval(f,c)<=0
      bn = c;
    else
      an = c;
    endif
    
    itmax--;
    number++;
  end
  printf("Number of iterations :\n");
  number
  res = c;
end