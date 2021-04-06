x = [0 10 20 30 40 60 80 100]
y = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133]
pol1 = polyfit(x, y, 2);
pol2 = polyfit(x, y, 5);

approx1 = polyval(pol1, 45);
error1 = abs(0.095848 - approx1);
approx1
plot(x, polyval(pol1,x),"*");
hold on
error1

approx2 = polyval(pol2, 45);
error2 = abs(0.095848 - approx2);
plot(x, polyval(pol2,x),"*");
approx2
error2

plot(x,y,"*");
hold on;
interval= 1:0.2:100;
plot(interval,polyval(pol1,interval),'r');
plot(interval,polyval(pol2,interval),'g');

