x=[0 pi/2 pi 3*pi/2 2*pi];
y=sin(x);
xx = 0:pi/100:2*pi;

%natural clamped spline
nat=spline(x,y,xx);
nat
nat1=spline(x,y,pi/4);
nat1
plot(x,y,'o',xx,nat,'color','red');
hold on;

%cubic clamped spline
%cos0=1 cos(2*pi)=1
clamped=spline(x,[1 y 1],xx);
clamped
clamped1=spline(x,[1 y 1],pi/4);
clamped1
plot(x,y,'o',xx,clamped,'color','black');

%the function
plot(xx,sin(xx),'color','blue');
%x=[pi/4];
res=sin(pi/4);
printf("%d",res);