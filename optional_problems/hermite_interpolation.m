function res = hermite_interpolation(A,B,C,x)
  m=length(A)-1;
  Z=[];
  FZ=[];
  for i =  1:length(B)
    Z=[Z,A(i),A(i)];
    FZ=[FZ,B(i),B(i)];
  end
  
  #square matrix
  Res=[FZ];


  index=2*m+1;

  for i=2:2*m+2
    aux=[];
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
    aux=[];
    
  end

  First_Line = Res'(1,1:end);


  Hf = B(1);

  for i=1:2*m+1
    aux = First_Line(i+1);
    for j=0:i-1
      aux = aux .* (x - Z(j+1));
    end
    Hf = Hf + aux;
  end
  res = Hf;
  
end