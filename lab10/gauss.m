
function res = gauss(n,A,b)
  
  for p=1:n-1
    
    % find the pivot
    
    max=p;
    for q=p:n
      if abs(A(q,p)) > abs(A(max,p))
        max=q;
      endif
    end
    
    
    % If a(q; p) = 0 then exit
    
    if A(max,p) == 0
      return
    endif
    
    
    % interchange the line if necessary
    
    if max != p 
      aux = A(max,:);
      A(max,:) = A(p,:);
      A(p,:) = aux;
      
      aux2 = b(max);
      b(max) = b(p);
      b(p) = aux2;
    endif

   
   % perform transformations
    
    for line=p+1:n
       r = A(line,p) / A(p,p) ;
       b(line) =  b(line) - (A(line,p) / A(p,p)) * b(p);
       A(line,:) =  A(line,:) - (A(line,p) / A(p,p)) * A(p,:);
       
    end
    
  end
  
  
  %  If a(n; n) = 0 then exit
  
  if A(n,n)==0
    return 
  endif
  
  % compute x(i)
  
  x=[b(n)/A(n,n)];
  for p = n - 1 :-1: 1
    s = sum( A(p,(p+1):n) .* x ) ;
    sol = (b(p) - s) / A(p,p) ;
    x=[sol,x];
    
  end
  
  res = x;
  
end
