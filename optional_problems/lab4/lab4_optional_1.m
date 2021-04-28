A=linspace(-5,5,20);
B=arrayfun(@(x) sin(x), A);
%A=[64 81 100 121 144 169];
%B=[8 9 10 11 12 13];

x=linspace(-5,5,100);
values= [];
for i=1:length(x)
  res = aikten_algorithm(A,B,x(i));
  values = [values,res];
end
plot(x,values)
hold on;
plot(x,sin(x))
plot(A,B,"*")
