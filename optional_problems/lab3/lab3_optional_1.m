% A)

m=2;
interval = 0:0.01:pi/3;

x=[0, pi/4, pi/3];
for i=1:m+1
  product=1;
  for j=1:m+1
    if j!=i
      product = product.*(interval - x(j))/(x(i) - x(j));
    endif
  end
  plot(interval,product);
  hold on;
end



% B)

%barycentric
X= [0, pi/4, pi/3];
Y= [cos(0), cos(pi/4), cos(pi/3)];
x=[pi/6];
res = lagrange_barycentric(X,Y,x);
for index=1:length(res)
  printf("using barycentric formula %f\n",res(index))
end

%classic
m=2;
interval = [pi/6];

x=[0, pi/4, pi/3];
fx=[cos(0), cos(pi/4), cos(pi/3)];
res=0;
for i=1:m+1
  product=1;
  for j=1:m+1
    if j!=i
      product = product.*(interval - x(j))/(x(i) - x(j));
    endif
  end
  product = product.*fx(i);
  res+=product;
end

printf("using classic formula %f\n",res)





% C)

X= [0, pi/4, pi/3];
Y= [cos(0), cos(pi/4), cos(pi/3)];
x=0:0.01:pi/3;
res = lagrange_barycentric(X,Y,x);
plot(x,res);
plot(x,cos(x));






