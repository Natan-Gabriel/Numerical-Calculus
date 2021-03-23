A= [0 3 5 8 13];
B= [0 225 383 623 993];
C= [75 77 80 74 72];

Z= [0 0 3 3 5 5 8 8 13 13];
FZ= [0 0 225 225 383 383 623 623 993 993];


#square matrix
Res=[FZ];

x = [10];

count=1;
m=4;
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
#Lmf
#Lmf2