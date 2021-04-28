% I will denote with compute the function that computes <f,g> , when w=1
function res=computes(f,g,points) 
  res = sum( arrayfun(f,points) .* arrayfun(g,points) );
end