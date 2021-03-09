X= [1930 1940 1950 1960 1970 1980];
Y= [123203 131669 150697 179323 203212 226505];


computed_A=[];
n=6;
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
m=5;

x=1955;
input_years = [1955 1995];

for i=0:m
  Lmf_upper_aux=computed_A(i+1)*Y(i+1)./(input_years - X(i+1));
  Lmf_upper_aux
  Lmf_upper = Lmf_upper + Lmf_upper_aux;
  Lmf_upper
  
  Lmf_lower_aux=computed_A(i+1)./(input_years - X(i+1));
  Lmf_lower = Lmf_lower + Lmf_lower_aux;

end;

Lmf_upper
Lmf_lower

result = Lmf_upper ./ Lmf_lower ; 
result


%B=arrayfun(@(x) sqrt(5*x^2+1), A);


