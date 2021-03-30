[x y]=ginput(5);
x
y
printf("%d",y(5));
xx = x(1):(x(5)-x(1))/100:x(5);





%natural clamped spline
nat=spline(x,y,xx);
nat
plot(x,y,'o',xx,nat);
hold on;