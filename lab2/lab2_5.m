
A=[2,4,6,8];
B=[4,8,14,16];
B
#square matrix
Res=[B];



count=1;
##{
index=3;

for i=2:4
  aux=[]
  for j=1:index
    prev = Res(end,:);
    #B=arrayfun(@(x) sqrt(5*x^2+1), A);
    val=(prev(j+1) - prev(j))/(A(j+i-1) - A(j) );
    val
    aux = [aux,val];

  end

  for j=index+1:4
    aux = [aux,0];
  end
  
  index = index -1;
  Res=[Res;aux];
  aux
  aux=[]
  
end

Res
Res'