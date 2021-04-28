
% SET 1
X= [-pi/4, -pi/6 0 ];
Y= [cos(-pi/4), cos(-pi/6) , cos(0)];

x=-pi/4:0.01:0;

res = lagrange_barycentric(X,Y,x);
plot(x,res);
hold on;
plot(x,cos(x));



% SET 2
X= [pi/8, pi/4 , pi/2];
Y= [cos(pi/8), cos(pi/4) , cos(pi/2)];

x=pi/8:0.01:pi/2;

res = lagrange_barycentric(X,Y,x);
plot(x,res);
plot(x,cos(x));