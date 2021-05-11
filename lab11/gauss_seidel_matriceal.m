function res = gauss_seidel_matriceal(n,D,L,U,B,eps)
  x = [0;0;0];
  x_old = x;
  x = inv(D+L);
  x = x* (-U*x+B) ;
  
  iter=1;
  while norm(x-x_old)>= eps
    x_old = x;
    x = inv(D+L)* (-U*x_old+B);
    iter++;
  end

  printf("I need %d iterations\n",iter);
  res = x;
end
