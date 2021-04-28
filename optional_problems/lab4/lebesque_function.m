function res = lebesque_function(nodes,given_points)
  m=length(nodes)-1;
  aux = 0;
  for i=1:m+1
    product=1;
    for j=1:m+1
      if j!=i
        product = product.*(given_points - nodes(j))/(nodes(i) - nodes(j));
      endif
    end
    aux += abs(product);
  end
  res=aux;
end