axis([0 3 0 5]);
[x y]=ginput(10);
x
y
printf("%d",y(5));
xx = x(1):(x(10)-x(1))/100:x(10);

pol = polyfit(x, y, 2);

plot(x,y,"*");
hold on;
interval= x(1):(x(10)-x(1))/100:x(10);
plot(interval,polyval(pol,interval));