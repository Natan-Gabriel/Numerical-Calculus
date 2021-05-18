function res = doolittle(n,A)
  all_mk = cell(n-1,1);
  
  % compute M_1
  tk = [];
  k=1;
  for i = 1:k
    tk=[tk;0];
  endfor
  for i = k+1:n
    l = A(i,k)/A(k,k);
    tk=[tk;l];
  endfor

  I_n = eye(n);
  mk = eye(n) - tk*(I_n(k,:));
  %tk
  all_mk{k} = mk;
  product_mk{k} = mk*A;
  
  for k=2:n-1
    tk = [];
    for i = 1:k
      tk=[tk;0];
    endfor
    for i = k+1:n
      l = product_mk{k-1}(i,k)/product_mk{k-1}(k,k);
      tk=[tk;l];
    endfor
    
    I_n = eye(n);
    mk = eye(n) - tk*(I_n(k,:));
    %tk
    all_mk{k} = mk;
    product_mk{k} = mk * product_mk{k-1};
  endfor
  
  U = A;
  L = eye(n);
  
  for k=1:n-1
    U = all_mk{k} * U;
    L = L * inv(all_mk{k});
  endfor
  
####  printf("A is:")  
####  A
####  printf("\nU is:")
####  U
####  printf("\nL is:")
####  L
####  printf("\nLU is:")
####  LU = L*U

  res = cell(2,1);
  res{1} = L;
  res{2} = U;
  
end
