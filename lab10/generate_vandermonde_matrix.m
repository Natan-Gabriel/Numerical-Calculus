function res = generate_vandermonde_matrix(n)
  tk = [];
  for k = 1:n
    tk = [tk,1/k];
  endfor
  
  res=vander(tk);
  
end