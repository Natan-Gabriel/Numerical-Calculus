x = -1:0.01:0;

f1 = x.^3 + sqrt(1-x);
plot(x,f1);
hold on

y = 0:0.01:1;
f2 = y.^3 - sqrt(1-y);
plot(y,f2);