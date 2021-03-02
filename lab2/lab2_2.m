t = -1:0.01:1;

%{
T1 = cos(1.*acos(t));
plot(t,T1);
hold on

T2 = cos(2.*acos(t));
plot(t,T2);
hold on 
%}

T3 = cos(3.*acos(t));
plot(t,T3);
hold on



x = -1:0.01:1;

n = input ("Pick a number: ")
#n=2;
#n=2;
t0=1;
t1=x;
plot(x,t0);
hold on
plot(x,t1);

for i=1:n
  t2=2.*x.*t1-t0;
  t0=t1;
  t1=t2;
  plot(x,t2);

end