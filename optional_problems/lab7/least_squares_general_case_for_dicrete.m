n=4; % in order to obtain the discrete least squares approximant of n-th degree you have to assign this variable (called "n")  the value n+1, not n. 
%So if you want the 3-rd degree approximant n has to be 3+1 = 4,not 3 ! 
% For degree >= 3 (i.e.  n >= 4), the graphs overlap!  
f = @(x) x^3;

%generate 12 random points in [0,10]
a = 0;
b = 10;
r = (b-a).*rand(12,1) + a


%computes matrix of free terms
free_terms=[];
for i=1:n
  g = @(x) x^(i-1);
  % I denoted with compute the function that computes <f,g> , when w=1
  aux = computes(f,g,r);
  free_terms=[free_terms,aux];
end

%computes matrix of coefficients
mat=[];
for k=1:n
  aux_vector=[];
  for i=1:n
    gi = @(x) x^(i-1);
    gk = @(x) x^(k-1);
    aux = computes(gi,gk,r);
    aux_vector=[aux_vector,aux];
  end
  mat=[mat;aux_vector];
end

% find the unknowns using gauss method
res=gauss(n,mat,free_terms)

% compute phi(x). If we reverse the obtained vector we can consider phi as the n-th degree polynomial
% This polyniomial(phi) is  the discrete least squares approximant of n-th degree for the given function
phi=flip(res)

da = @(x) polyval(phi,x);
points=0:0.1:10;
computed_result= arrayfun(@(x) feval(f,x), points);
plot(points,computed_result);
hold on;
computed_result2= arrayfun(@(x) feval(da,x), points);
plot(points,computed_result2);
%plot(points,da);









