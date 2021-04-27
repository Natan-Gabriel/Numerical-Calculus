function res = simpson(a,b,f)
  res = (b-a)/6*(feval(f,a)+4*feval(f,(a+b)/2)+feval(f,b));
end
