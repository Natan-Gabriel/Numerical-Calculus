f= @(x,y) log(x+2*y);
a=1.4;
b=2;
c=1;
d=1.5;

res = (b-a)*(d-c)/16*(  feval(f,a,c)+feval(f,a,d)+feval(f,b,c)+feval(f,b,d)+
                        2*feval(f,(a+b)/2,c)+2*feval(f,(a+b)/2,d)+2*feval(f,a,(c+d)/2)+
                        2*feval(f,b,(c+d)/2)+4*feval(f,(a+b)/2,(c+d)/2) )
                        
