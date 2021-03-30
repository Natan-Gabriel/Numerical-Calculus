interval=0:pi/4:2*pi;
interval1=0:pi/100:2*pi;
%y=sin(x);

%xi=0
%xi1=pi/4;
%x=0:pi/50:2*pi;
%pix=cos(xi)+(cos(xi1)-cos(xi))/(xi1-xi)*(x-xi)

%plot(xi,xi1,x,pix);
%hold on;


for i=1:length(interval)-1
  xi=interval(i);
  xi1=interval(i+1);
  x=xi:(xi1-xi)/25:xi1;
  pix=cos(xi)+(cos(xi1)-cos(xi))/(xi1-xi)*(x-xi)

  plot(x,pix);
  hold on;
end

plot(interval1,cos(interval1));