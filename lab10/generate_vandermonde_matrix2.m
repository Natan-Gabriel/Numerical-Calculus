function res = generate_vandermonde_matrix2(n)
  tk = [];
  for k = 1:n
    tk = [tk,-1 + (2/n)*k];
  endfor
  
  res=vander(tk);
  
end