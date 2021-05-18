function res = false_position(itmax,an,bn,f,eps)
  number=0;
  
  while itmax>0
    c = (feval(f,bn)*an - feval(f,an)*bn)/(feval(f,bn) - feval(f,an));
    if feval(f,an)*feval(f,c)<0
      bn = c;
    else
      an = c;
    endif
    
    itmax--;
    number++;
    if abs(feval(f,c))<eps
      
      break
    endif
  end
  printf("Number of iterations :\n");
  number
  res = c;
end