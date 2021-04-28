

function res = lagrange_barycentric(X,Y,x)
  computed_A=[];
  n=length(X);
  for i=1:n
    aux=1;
    for j=1:n
      if i!=j
        aux=aux*(X(i)-X(j));
      endif;
    end;
    computed_A=[computed_A;1/aux];
  end;

  Lmf_upper= 0;
  Lmf_lower= 0;
  m=n-1;


  for i=0:m
    Lmf_upper_aux=computed_A(i+1)*Y(i+1)./(x - X(i+1));
    Lmf_upper = Lmf_upper + Lmf_upper_aux;
    
    Lmf_lower_aux=computed_A(i+1)./(x - X(i+1));
    Lmf_lower = Lmf_lower + Lmf_lower_aux;

  end;

  res = Lmf_upper ./ Lmf_lower ; 
end