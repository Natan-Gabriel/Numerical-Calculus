% A)

interval=linspace(-5,5,100);
f= @(x) 1/(1+x*x);
fplot(f,[-5 5]);
hold on;

% in order to have the degree m, we will use m+1 points
interval_degree_4=linspace(-5,5,5);
f4 = arrayfun(@(x) 1/(1+x*x),interval_degree_4);
res = lagrange_barycentric(interval_degree_4,f4,interval);
plot(interval,res);



interval_degree_8=linspace(-5,5,9);
f8 = arrayfun(@(x) 1/(1+x*x),interval_degree_8);
res = lagrange_barycentric(interval_degree_8,f8,interval);
plot(interval,res);



interval_degree_14=linspace(-5,5,15);
f14 = arrayfun(@(x) 1/(1+x*x),interval_degree_14);
res = lagrange_barycentric(interval_degree_14,f14,interval);
plot(interval,res);




