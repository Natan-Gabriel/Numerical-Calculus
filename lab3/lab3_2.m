X= [100 121 144];
Y= [10 11 12];


computed_A=[];
n=3;
for i=1:n
  aux=1;
  for j=1:n
    if i!=j
      aux=aux*(X(i)-X(j));
    endif;
  end;
  computed_A=[computed_A;1/aux];
end;

computed_A

Lmf_upper= 0;
Lmf_lower= 0;
m=2;


input = [115];

for i=0:m
  Lmf_upper_aux=computed_A(i+1)*Y(i+1)./(input - X(i+1));
  Lmf_upper = Lmf_upper + Lmf_upper_aux;
  
  Lmf_lower_aux=computed_A(i+1)./(input - X(i+1));
  Lmf_lower = Lmf_lower + Lmf_lower_aux;

end;


result = Lmf_upper ./ Lmf_lower ; 
result


%B=arrayfun(@(x) sqrt(5*x^2+1), A);
