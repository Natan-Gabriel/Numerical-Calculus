function res = rectangle(a,b,f)
  res = (b-a)*feval(f,(a+b)/2);
end