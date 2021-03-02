A= [1 1.25 1.5 1.75 2 2.25 2.5];
B = [];
#f=sqrt(5*x^2+1);

B=arrayfun(@(x) sqrt(5*x^2+1), A);
B
#square matrix
Res=[B];




##{
index=6;

for i=2:7
  aux=[]
  for j=1:index
    prev = Res(end,:);
    #B=arrayfun(@(x) sqrt(5*x^2+1), A);
    val=prev(j+1) - prev(j);
    val
    aux = [aux,val];

  end

  for j=index+1:7
    aux = [aux,0];
  end
  
  index = index -1;
  Res=[Res;aux];
  aux
  aux=[]
  
end

Res
Res'

##}

