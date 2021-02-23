
a=3;
b=5;
t= 0:0.01:10*pi;

x = (a + b)*cos(t) - b*cos((a/b+1)*t);
y = (a + b)*sin(t) - b*sin((a/b+1)*t);

plot(x,y);