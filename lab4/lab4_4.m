A=[64 81 100 121 144 169];
B=[8 9 10 11 12 13];
B
Res=[B];


count=1;
##{
m = 6-1;
index=m;
x = 115;
for i=2:m+1
  aux=[]
  for j=1:m+1-index
    aux = [aux,0];
  end
  for j=m+2-index:m+1
    prev = Res(end,:);
    prev2 = Res(i-1,:);
    #B=arrayfun(@(x) sqrt(5*x^2+1), A);
    inter = prev2(i-1)*(A(i-1)-x);
    prev2(i-1)
    A(i-1)-x
    prev(j)
    A(j) - x
    inter
    val=(prev2(i-1)*(A(j) - x) - prev(j)*(A(i-1)-x))/(A(j) - A(i-1));
    val
    aux = [aux,val];

  end

  
  
  index = index -1;
  Res=[Res;aux];
  aux
  aux=[]
  
  if abs(Res(i,i)-Res(i-1,i-1))<=10^(-3)
    Res
    Res'
    printf("the value is %f",Res(i,i));
    return
  endif
  
end

Res
Res'
R