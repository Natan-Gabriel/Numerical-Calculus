A= [1 2];
B= [0 0.6931];
C= [1 0.5];

Z= [1 1 2 2];
FZ= [0 0 0.6931 0.6931];


#square matrix
Res=[FZ];

x = [1.5];

count=1;
m=1;
index=2*m+1;

for i=2:2*m+2
  aux=[]
  for j=1:index
    if rem(j,2)==1 && i==2
      prev = Res(end,:);
      #B=arrayfun(@(x) sqrt(5*x^2+1), A);
      val=C(fix((j+1)/2));
      #val
      aux = [aux,val];
    else
      prev = Res(end,:);
      #B=arrayfun(@(x) sqrt(5*x^2+1), A);
      val=(prev(j+1) - prev(j))/(Z(j+i-1) - Z(j) );
      #val
      aux = [aux,val];
    endif
    

  end

  for j=index+1:2*m+2
    aux = [aux,0];
  end
  
  index = index -1;
  Res=[Res;aux];
  #aux
  aux=[]
  
end

Res'
Res'(1,1:end)
First_Line = Res'(1,1:end);
#Res'(1,2:end)

First_Line

Hf = B(1)

for i=1:2*m+1
  aux = First_Line(i+1);
  for j=0:i-1
    aux = aux .* (x - Z(j+1));
  end
  Hf = Hf + aux;
end

Hf
printf("the absolute approximation error is %f",abs(Hf-log(1.5)))
#Lmf
#Lmf2