
function res = generate_hilbert_matrix(n)
  res=[];
  for i = 1:n
    aux=[];
    for j = 1:n
      aux = [aux,1/(i+j-1)];
    endfor
    res = [res;aux];
  endfor
  
end
  