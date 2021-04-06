x=[1 2 3 4 5 6 7];
fx=[13 15 20 14 15 13 10];

a=(sum(7*x.*fx) - sum(x)*sum(fx)) / (sum(7*x.*x) - sum(x)*sum(x));
b=(sum(x.*x)*sum(fx) - sum(x.*fx)*sum(x)) / (sum(7*x.*x) - sum(x)*sum(x));

phi = [a b];
X = 8;
res=polyval(phi,X);
res

Eab = sum((fx .- polyval(phi,x)).^2);
Eab

plot(x,fx,"*");
hold on;
interval= 1:0.05:7; 
plot(interval,polyval(phi,interval));
