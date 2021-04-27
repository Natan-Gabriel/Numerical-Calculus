function res = adaptive_simpson(a,b,err,f)
  
  I1=simpson(a,b,f);
  I2=simpson(a,(a+b)/2,f) + simpson((a+b)/2,b,f);
  if abs(I1-I2)<15*err
    res=I2;
    return
  else
    res = adaptive_simpson(a,(a+b)/2,err/2,f) + adaptive_simpson((a+b)/2,b,err/2,f);
  endif
  
end