X= linspace(0,10,21);
X
Y= arrayfun(@(x) (1+cos(pi*x))/(1+x), X);
Y

computed_A=[];
n=21;
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
m=20;

input_points = linspace(0,10,100);
input_points

for i=0:m
  Lmf_upper_aux=computed_A(i+1)*Y(i+1)./(input_points - X(i+1));
  Lmf_upper_aux
  Lmf_upper = Lmf_upper + Lmf_upper_aux;
  Lmf_upper
  
  Lmf_lower_aux=computed_A(i+1)./(input_points - X(i+1));
  Lmf_lower = Lmf_lower + Lmf_lower_aux;

end;

Lmf_upper
Lmf_lower

result = Lmf_upper ./ Lmf_lower ; 
result

plot(input_points,result);
hold on;
computed_result= arrayfun(@(x) (1+cos(pi*x))/(1+x), input_points);
plot(input_points,computed_result);


%B=arrayfun(@(x) sqrt(5*x^2+1), A);
