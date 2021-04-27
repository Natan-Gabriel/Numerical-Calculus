%format long
format long g
%format shortg

%problem 2 a)
a=0;
b=1;
f= @(x) 2/(1+x^2);
err=0.0001;
h=b-a;
first=(h/2)*(feval(f,a)+feval(f,b));
second=1/2*first+ h*feval(f,a+h/2);
k=3;
while abs(first-second)>err
  first=second;
 
  aux_sum1=0;
  for j=1:2^(k-1)
    aux_sum1 += feval(f,a + (2*j-1)/(2^k)*h);
  end
  
  second=1/2*second+h/(2^k)*aux_sum1;
  k=k+1;
end

printf("Problem 2 a):\n");
fprintf('%f\n',second);

%problem 2 b)
printf("Problem 2 b):\n");
n=15;
a=0;
b=1;
f= @(x) 2/(1+x^2);
aux=[];

for i=0:n-1
  val=repeated_trapezium(a,b,i+1,f);
  aux = [aux,val];
end

Res=[aux];

for j=2:n
  aux=[];
  prev = Res(end,:);
  
  for i=1:j-1
    TIJ=0;
    aux=[aux,TIJ];
  end
  
  for i=j:n
    TIJ=(4^(-j+1)*prev(i-1)-prev(i))/(4^(-j+1)-1);
    aux=[aux,TIJ];
  end
  Res=[Res;aux];
  
  if abs(Res(j,j)-Res(j-1,j-1))<=err
    Res';
    printf("the value is %f; we need a matrix of %f X %f\n",Res(j,j),j,j);
    break
    return
  endif
  
end
