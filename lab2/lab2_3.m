x=-1:0.01:3;

P0=1;
plot(x,P0);
hold on;
n=5;

aux=1;

for i=1:n
  aux=aux*i;
  P1 = P0 + x.^i/aux;
  P0=P1;
  plot(x,P0);
end;
P1;