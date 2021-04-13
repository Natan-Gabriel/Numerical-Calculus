function res = trapezium(a,b,f)
  res = (b-a)/2*(feval(f,a)+feval(f,b));
end
