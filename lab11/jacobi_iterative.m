function res = jacobi_iterative(n,A,B,eps)
  x = [0;0;0;0;0;0];
  x_old = x;
  x = [];
  for i=1:n
    
    aux = B(i) - ( sum((x_old').*A(i,:)) - A(i,i)*x_old'(i) );
    aux = aux/A(i,i);
    x = [x;aux];
  end
  iter=1;
  while norm(x-x_old)>= eps
    x_old = x;
    x = [];
    for i=1:n
      %x_old
      %A(i)
      aux = B(i) - ( sum((x_old').*A(i,:)) - A(i,i)*x_old(i) );
      aux = aux/A(i,i);
      x = [x;aux];
    endfor
     iter++;
  end

  printf("I need %d iterations\n",iter);
  res = x;
end
