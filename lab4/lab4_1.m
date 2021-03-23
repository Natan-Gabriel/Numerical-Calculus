A= [1 1.5 2 3 4];
B= [0 0.17609 0.30103 0.47712 0.60206];

#A=[2,4,6,8];
#B=[4,8,14,16];
B
#square matrix
Res=[B];

x= [2.5 3.25];
x4 = linspace(10,35,26);
x2 = x4./10;

count=1;
##{
index=4;

for i=2:5
  aux=[]
  for j=1:index
    prev = Res(end,:);
    #B=arrayfun(@(x) sqrt(5*x^2+1), A);
    val=(prev(j+1) - prev(j))/(A(j+i-1) - A(j) );
    val
    aux = [aux,val];

  end

  for j=index+1:5
    aux = [aux,0];
  end
  
  index = index -1;
  Res=[Res;aux];
  aux
  aux=[]
  
end

Res
Res'(1,1:end)
First_Line = Res'(1,1:end);
Res'(1,2:end)

First_Line

Lmf = B(1)

Lmf
Lmf2 = B(1)

m=4
for i=1:m
  aux = First_Line(i+1);
  aux2 = First_Line(i+1);
  for j=0:i-1
    aux = aux .* (x - A(j+1));
    aux2 = aux2 .* (x2 - A(j+1));
  end
  Lmf = Lmf + aux;
  Lmf2 = Lmf2 + aux2;
  #aux = [aux,0];
end

Lmf
Lmf2

###########################################################################

max =0 ;

for i=1:26
    #log10((i+9)/10) - x2(i);
    aux = abs(log10((i+9)/10) - Lmf2(i));

    if aux>max
      max=aux;
    endif;
end

max





