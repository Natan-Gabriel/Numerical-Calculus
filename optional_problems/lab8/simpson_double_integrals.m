
function J = simpson_double_integrals(a,b,c,d,m,n,f)
  h=(b-a)/(2*n);
  j1=0; j2=0; j3=0;
  for i=0:2*n
    x=a+i*h;
    h1=(d-c)/(2*m);
    k1=feval(f,x,c)+feval(f,x,d);
    k2=0;
    k3=0;
    for j=1:2*m-1
      y=c+j*h1;
      z=feval(f,x,y);
      if mod(j, 2)==0
        k2=k2+z;
      else 
        k3=k3+z;
      endif
    endfor
    l=(k1+2*k2+4*k3)*h1/3;
    if (i==0) || (i==2*n) 
      j1=j1+l;
    else 
        if mod(i, 2)==0
          j2=j2+l;
        else 
          j3=j3+l;
        endif
        
    endif
  end
  J=(j1+2*j2+4*j3)*h/3 ; 
  
end
