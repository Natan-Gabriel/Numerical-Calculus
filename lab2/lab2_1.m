x= 0:0.01:1;

l1=x;
subplot(2,2,1);
plot(x,l1);
hold on

l2=3/2*x.^2 - 1/2;
subplot(2,2,2);
plot(x,l2);
hold on

l3=5/2*x.^3 - 3/2*x;
subplot(2,2,3);
plot(x,l3);
hold on

l4=35/8*x.^4 - 15/4*x.^2 - 3/8;
subplot(2,2,4);
plot(x,l4);
hold on


