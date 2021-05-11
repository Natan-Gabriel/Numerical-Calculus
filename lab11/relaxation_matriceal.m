function res = relaxation_matriceal(n,D,L,U,B,eps,w)
  x = [0;0;0];
  x_old = x;
  x = inv(D+w*L);
  x = x * (((1-w)*D - w*U)*x + w*B) ;
  
  iter=1;
  while norm(x-x_old)>= eps
    x_old = x;
    x = inv(D+w*L) * (((1-w)*D - w*U)*x_old+ w*B) ;
    iter++;
  end

  printf("I need %d iterations\n",iter);
  res = x;
end
